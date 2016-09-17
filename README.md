## empty-element-test ##
We need a set of filters to test for empty elements (dc:\[title,identifier,rights\]).

### how to use this repository ###
1. clone this repository
2. if you don't already have an XSLT 2.0 processor available on your computer, consider grabbing one of the FOSS versions of [Saxon from sourceforge](http://saxon.sourceforge.net).
    * [Saxon-B](https://sourceforge.net/projects/saxon/files/Saxon-B/9.1.0.8/saxonb9-1-0-8j.zip/download) \[direct download\]
    * [Saxon-HE](https://sourceforge.net/projects/saxon/files/Saxon-HE/9.7/saxonHE9-7-0-1J.zip/download) \[direct download\]

**note:** you'll need Java for both of those downloads. Alternately you can use oXygen to test this transform (you'll still need Java). 

3. after installing your processor, navigate to wherever you cloned this repository
    1. if you're using oXygen, you can open both files, switch to the XSLT Debugger and hit the Blue Arrow to run/debug the transform.
    2. if you're using a downloaded Saxon and you're on Windows, I'm afraid that I lack sufficient familiarity with your platform to provide steps for testing this. :( sorry. 
    3. if you're using Mac or a *nix system there are a few options:
        1. something like `$ java -jar /path/to/where/the/Saxon/download/landed/saxon9he.jar -s:empty-element-test-advanced.xml -xsl:empty-element-test.xsl`
        2. or if you installed saxon from a package system `$ saxon -s:input.xml -xsl:stylesheet.xsl`
         
