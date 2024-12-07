"""
    ImageCubeLocation(h5path,cubepath,λ)

Defines the location of a single image cube in an HDF5 file

#Fields
- `h5path`: File path to the parent HDF5 file
- `cubepath`: Internal path to the specific image cube
- `λ`: Internal path to the attribute defining the wavelengths of the image cube
"""
struct ImageCubeLocation
    h5path::String
    cubepath::String
    λ:: String
end

"""
    ImageStackLocation(h5path,cubepath,names)

Defines the location of a stack of 2D images. This is similar to an image cube, but the third dimension of data is not spectrally related.

#Fields
- `h5path`: File path to the parent HDF5 file
- `cubepath`: Internal path to the specific image cube
- `names`: Internal path to the attribute defining the stack of the image cube
"""
struct ImageStackLocation
    h5path::String
    cubepath::String
    names:: String
end