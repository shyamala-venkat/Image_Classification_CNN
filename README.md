# Image Classifier - Dogs and Cats Species

### Tools used

This was built with PyTorch/FastAI for the Machine Learning part and Flask as a Webserver. Docker was used for containerization and easy deployment . The dataset used was loaded from fastai library related to Pets data.


### Training the CNN Mode

Resnet34, a pre-trained model with a large set of images was used for this task.
Leveraging the knowledge of pre-trained model saves both model building time and resources like GPU.
Error rate was used as a metric to calculate the loss or difference between the predicted label and the actual label.
cnn_learner API from fastai library was used to create a CNN model with these inputs.

The DataBlock api from Fastai library was used to provide the inputs to the model.

ImageBlock and Category Block indicate that the input data is in the form of images and the
corresponding label for the images is a category.
The images will be fetched from the mentioned path.
The splitting of data into training and testing sets will be done by the splitter function with the default
splitting of 80-20. 80% of the data for training and 20% for testing phase.
The label or the target category for the images are parsed using regular expressions from the image
names.
Some of the data augmentation techniques like zooming, flipping, resizing, etc are applied to the
images which can be helpful for the model to generalize well on the new data.


### Creating the application and running in Docker

Flask was used to create a basic app. On invoking the rest api, the exported model would be called to classify the images.

To run this application inside a Docker, a docker file was created which includes commands to execute this app.

The docker image was built from the docker file, a docker container was created from this image in which the application was started.

Command to launch the container:
```bash
docker build -t image_classifier . && docker run --rm -it -p 8080:8080 image_classifier
```



