Return-Path: <ajlennon@dynamicdevices.co.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 528C8E00B67; Fri,  9 May 2014 04:51:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: *
X-Spam-Status: No, score=1.3 required=5.0 tests=HTML_MESSAGE,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: *  0.0 HTML_MESSAGE BODY: HTML included in message
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from www.dynamicdevices.co.uk (unknown [89.200.136.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A5A6AE00B62
	for <yocto@yoctoproject.org>; Fri,  9 May 2014 04:51:39 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by www.dynamicdevices.co.uk (Postfix) with ESMTP id AFE5427E019;
	Fri,  9 May 2014 11:51:36 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at lennoab2.miniserver.com
Received: from www.dynamicdevices.co.uk ([127.0.0.1])
	by localhost (www.dynamicdevices.co.uk [127.0.0.1]) (amavisd-new,
	port 10024)
	with ESMTP id 440VtYkBH4Vy; Fri,  9 May 2014 11:51:16 +0000 (UTC)
Received: from [127.0.0.1] (cpc32-live22-2-0-cust59.17-2.cable.virginm.net
	[82.36.253.60])
	(using TLSv1 with cipher ECDHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by www.dynamicdevices.co.uk (Postfix) with ESMTPSA id 57F8027E006;
	Fri,  9 May 2014 11:51:16 +0000 (UTC)
Message-ID: <536CC132.2010907@dynamicdevices.co.uk>
Date: Fri, 09 May 2014 12:51:14 +0100
From: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
User-Agent: Mozilla/5.0 (Windows NT 6.3; WOW64;
	rv:24.0) Gecko/20100101 Thunderbird/24.5.0
MIME-Version: 1.0
To: Meenakumari Shedole <meenakumari.s@hcl.com>
References: <E4938C0D959B3445943720B88F0721341562A2D7@NDA-HCLT-MBS02.hclt.corp.hcl.in>
	<536903ED.1040806@dynamicdevices.co.uk>
	<E4938C0D959B3445943720B88F0721341562D593@NDA-HCLT-MBS02.hclt.corp.hcl.in>,
	<536B5AFC.6090105@dynamicdevices.co.uk>
	<E4938C0D959B3445943720B88F0721341562D6B0@NDA-HCLT-MBS02.hclt.corp.hcl.in>
In-Reply-To: <E4938C0D959B3445943720B88F0721341562D6B0@NDA-HCLT-MBS02.hclt.corp.hcl.in>
X-Enigmail-Version: 1.6
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Third Party Components Integration in Yocto
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 09 May 2014 11:51:46 -0000
Content-Type: multipart/alternative;
	boundary="------------040809020008040604070901"

--------------040809020008040604070901
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit


On 09/05/2014 06:56, Meenakumari Shedole wrote:
> Thanks for your response Alex.
>
> I gone with all these steps but not helpful.
>

Hi Meena,

I'm sorry to hear that. I think your installation line is still
incorrect, and should probably be ${S}/bb-example or ${WORKDIR}/bb-example

I'm not sure what is in the source archive you are using
'bb-example.tar.bz2' though, but you're specifying make in your recipe
so I imagine you are attempting to build something? Perhaps that's not
working?

If the compile is failing you should see some errors in the log files we
discussed.

If you upload bb-example.tar.bz2 somewhere for me I will take a look at
it for you.

>       install -m 0755 bb-example ${D}${bindir}

That said, I don't want to overcomplicate things for you, but I'm
assuming you're trying to understand how the build system works so it
might be worth us taking a step back here and looking at some simple
examples that do work to understand the process.

I've commited a very simple autotools based project to git hub here,
https://github.com/DynamicDevices/bbexample

This will build an executable called bbexample with a dependency on a
shared library. It'll print out a couple of Hello World messages.

Building on the host for test
========================

You can check this all works on your build PC - independently of the
Yocto environment - with something like the following:
(Note that I've taken the hyphen out of the name of the executable as it
was causing me trouble with autotools configuration)

git clone  git://github.com/DynamicDevices/bbexample.git
cd bbexample
./autogen.sh
./configure
make

At the end of this process you will have an executable 'bbexample' in
your build directory

If you run it with:

./bbexample

You will see

Hello Yocto World...
Hello World (from a shared library!)

So we know this builds and works on your host.

Building and Packaging from a Git Commit
=====================================

Next we can create a recipe that makes use of this project within Yocto
to cross-compile, package the bbexample executable and the shared
library it depends upon.
   
I've created an example layer, using the yocto-layer command, that
contains a recipe to build the bbexample project.

(a) You can git clone and add this layer to your conf/bblayer.conf file

cd sources
git clone  git://github.com/DynamicDevices/meta-example.git

e.g. in conf/local/conf

BSPDIR := "${@os.path.abspath(os.path.dirname(d.getVar('FILE', True)) +
'/../..')}"

BBLAYERS = " \
  ${BSPDIR}/sources/poky/meta \
  ${BSPDIR}/sources/poky/meta-yocto \
  ...
  ${BSPDIR}/sources/meta-example \
  ...
"

(b) Alternatively if you don't want to do that just grab the recipe text
from github and put it somewhere suitable in your source tree.

https://github.com/DynamicDevices/meta-example/blob/master/recipes-example/bbexample/bbexample_1.0.bb

Next run

bitbake bbexample

This will go through fetching the source, unpacking, configuring,
compiling, installing and packaging

Depending on the machine you are targetting the resulting package will
be somewhere in the tmp/deploy tree

e.g. I am building RPMs for Raspberry Pi here so

tmp/deploy/rpm/arm6_vfp/bbexample-1.0-r0.0.armv6_vfp.rpm

You can do something like this to see where it is

cd tmp/deploy
find -name bbexample*

A quick check of the package contents with

rpm -qlp rpm/armv6_vfp/bbexample-1.0-r0.0.armv6_vfp.rpm

shows the executable and the shared library are packaged as we want them

/usr
/usr/bin
/usr/bin/bbexample
/usr/lib
/usr/lib/libbbexample.so.1
/usr/lib/libbbexample.so.1.0.0

You can then add the recipe to your output image by adding something
like this to your conf/local/conf

IMAGE_INSTALL_append = " bbexample"

Building and Packaging from a remote release tarball
===================================================

Now that's still not quite what you are doing, as you are using a source
tarball instead of a git commit from what I can see

So I've created another two recipes, bbexample-rt and bbexample-lt which
show the process for using a remote tarball, and a local tarball

If you run

bitbake bbexample-rt

Bitbake will pull down the archive from

https://github.com/DynamicDevices/bbexample/archive/bbexample-v1.0.tar.gz

It'll unpack the archive, build, install, package and so forth.

As above you'll see the files in the generated archive, something similar to

rpm -qlp tmp/deploy/rpm/armv6_vfp/bbexample-rt-1.0-r0.2.armv6_vfp.rpm

Note that if you look in the recipe you'll see I am redefining the
source directory to be appropriate for the structure of the downloaded
tarball.

This is _critical_ as otherwise bitbake won't find the files...

# Make sure our source directory (for the build) matches the directory
structure in the tarball
# A tagged tarball from github contains a folder which includes the
github tag, so deal with it here
S = "${WORKDIR}/bbexample-bbexample-v${PV}"

https://github.com/DynamicDevices/meta-example/blob/master/recipes-example/bbexample/bbexample-rt_1.0.bb

You can check if your source directory is set correctly for the tarball
you are trying to build by running bitbake -c devshell recipename
If you drop into a directory that is more or less empty (perhaps apart
from patches) then this is a good indicator ${S} is incorrect. I usually
cd .. up one level and can then usually see another folder which does
contain the correct sources, and it is this folder name you need to set
the source directory to in the recipe with ${S} =
"${WORKDIR}/correctfoldername"

Building and Packaging from a local release tarball
============================================

Lastly we can do the same thing with a local tarball using the
bbexample-lt recipe I've provided. I've put a copy of the tarball we
used in bbexample-rt into the bbexample-1.0 folder in the bbexample
recipe folder. I've also added a search path into the recipe so the
bbexample-lt recipe finds the file there

e.g.

FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-${PV}:"

So to build this recipe run

bitbake bbexample-lt

(You'll probably get some warnings during these builds as each recipe is
building the same target files and thus overwriting shared files
generated by the other recipes. You can ignore these)

If we look at the resulting package(s) we should see the appropriate files

rpm -qlp tmp/deploy/rpm/armv6_vfp/bbexample-lt-1.0-r0.0.armv6_vfp.rpm

/usr
/usr/bin
/usr/bin/bbexample
/usr/lib
/usr/lib/libbbexample.so.1
/usr/lib/libbbexample.so.1.0.0

...

I hope this helps to provide a bit of background, and perhaps a starting
point for a working build of an example package

Cheers,

Alex



--------------040809020008040604070901
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <br>
    <div class="moz-cite-prefix">On 09/05/2014 06:56, Meenakumari
      Shedole wrote:<br>
    </div>
    <blockquote
cite="mid:E4938C0D959B3445943720B88F0721341562D6B0@NDA-HCLT-MBS02.hclt.corp.hcl.in"
      type="cite">
      <meta http-equiv="Content-Type" content="text/html;
        charset=windows-1252">
      <style id="owaParaStyle" type="text/css"></style>
      <div style="direction: ltr;font-family: Tahoma;color:
        #000000;font-size: 10pt;">Thanks for your response Alex.<br>
        <br>
        I gone with all these steps but not helpful.<br>
        <br>
      </div>
    </blockquote>
    <br>
    Hi Meena,<br>
    <br>
    I'm sorry to hear that. I think your installation line is still
    incorrect, and should probably be ${S}/bb-example or
    ${WORKDIR}/bb-example<br>
    <br>
    I'm not sure what is in the source archive you are using
    'bb-example.tar.bz2' though, but you're specifying make in your
    recipe so I imagine you are attempting to build something? Perhaps
    that's not working? <br>
    <br>
    If the compile is failing you should see some errors in the log
    files we discussed.<br>
    <br>
    If you upload bb-example.tar.bz2 somewhere for me I will take a look
    at it for you.<br>
    <br>
    <blockquote
cite="mid:E4938C0D959B3445943720B88F0721341562D6B0@NDA-HCLT-MBS02.hclt.corp.hcl.in"
      type="cite">
      <div style="direction: ltr;font-family: Tahoma;color:
        #000000;font-size: 10pt;">
              install -m 0755 bb-example ${D}${bindir}</div>
    </blockquote>
    <br>
    That said, I don't want to overcomplicate things for you, but I'm
    assuming you're trying to understand how the build system works so
    it might be worth us taking a step back here and looking at some
    simple examples that do work to understand the process.<br>
    <br>
    I've commited a very simple autotools based project to git hub here,
    <a class="moz-txt-link-freetext" href="https://github.com/DynamicDevices/bbexample">https://github.com/DynamicDevices/bbexample</a><br>
    <br>
    This will build an executable called bbexample with a dependency on
    a shared library. It'll print out a couple of Hello World messages.<br>
    <br>
    Building on the host for test<br>
    ========================<br>
    <br>
    You can check this all works on your build PC - independently of the
    Yocto environment - with something like the following:<br>
    (Note that I've taken the hyphen out of the name of the executable
    as it was causing me trouble with autotools configuration)<br>
    <br>
    git clone  <a class="moz-txt-link-freetext" href="git://github.com/DynamicDevices/bbexample.git">git://github.com/DynamicDevices/bbexample.git</a><br>
    cd bbexample<br>
    ./autogen.sh<br>
    ./configure<br>
    make<br>
    <br>
    At the end of this process you will have an executable 'bbexample'
    in your build directory<br>
    <br>
    If you run it with:<br>
    <br>
    ./bbexample<br>
    <br>
    You will see<br>
    <br>
    Hello Yocto World...<br>
    Hello World (from a shared library!)<br>
    <br>
    So we know this builds and works on your host.<br>
    <br>
    Building and Packaging from a Git Commit<br>
    =====================================<br>
    <br>
    Next we can create a recipe that makes use of this project within
    Yocto to cross-compile, package the bbexample executable and the
    shared library it depends upon.<br>
        <br>
    I've created an example layer, using the yocto-layer command, that
    contains a recipe to build the bbexample project. <br>
    <br>
    (a) You can git clone and add this layer to your conf/bblayer.conf
    file<br>
    <br>
    cd sources<br>
    git clone  <a class="moz-txt-link-freetext" href="git://github.com/DynamicDevices/meta-example.git">git://github.com/DynamicDevices/meta-example.git</a><br>
    <br>
    e.g. in conf/local/conf<br>
    <br>
    BSPDIR := <a class="moz-txt-link-rfc2396E" href="mailto:${@os.path.abspath(os.path.dirname(d.getVar('FILE',True))+'/../..')}">"${@os.path.abspath(os.path.dirname(d.getVar('FILE',
    True)) + '/../..')}"</a><br>
    <br>
    BBLAYERS = " \<br>
      ${BSPDIR}/sources/poky/meta \<br>
      ${BSPDIR}/sources/poky/meta-yocto \<br>
      ...<br>
    <font color="#ff0000">  ${BSPDIR}/sources/meta-example \<br>
    </font>  ...<br>
    "<br>
    <br>
    (b) Alternatively if you don't want to do that just grab the recipe
    text from github and put it somewhere suitable in your source tree.<br>
    <br>
<a class="moz-txt-link-freetext" href="https://github.com/DynamicDevices/meta-example/blob/master/recipes-example/bbexample/bbexample_1.0.bb">https://github.com/DynamicDevices/meta-example/blob/master/recipes-example/bbexample/bbexample_1.0.bb</a><br>
    <br>
    Next run <br>
    <br>
    bitbake bbexample<br>
    <br>
    This will go through fetching the source, unpacking, configuring,
    compiling, installing and packaging<br>
    <br>
    Depending on the machine you are targetting the resulting package
    will be somewhere in the tmp/deploy tree<br>
    <br>
    e.g. I am building RPMs for Raspberry Pi here so<br>
    <br>
    tmp/deploy/rpm/arm6_vfp/bbexample-1.0-r0.0.armv6_vfp.rpm<br>
    <br>
    You can do something like this to see where it is<br>
    <br>
    cd tmp/deploy<br>
    find -name bbexample*<br>
    <br>
    A quick check of the package contents with<br>
    <br>
    rpm -qlp rpm/armv6_vfp/bbexample-1.0-r0.0.armv6_vfp.rpm<br>
    <br>
    shows the executable and the shared library are packaged as we want
    them<br>
    <br>
    /usr<br>
    /usr/bin<br>
    /usr/bin/bbexample<br>
    /usr/lib<br>
    /usr/lib/libbbexample.so.1<br>
    /usr/lib/libbbexample.so.1.0.0<br>
    <br>
    You can then add the recipe to your output image by adding something
    like this to your conf/local/conf<br>
    <br>
    IMAGE_INSTALL_append = " bbexample"<br>
    <br>
    Building and Packaging from a remote release tarball<br>
    ===================================================<br>
    <br>
    Now that's still not quite what you are doing, as you are using a
    source tarball instead of a git commit from what I can see<br>
    <br>
    So I've created another two recipes, bbexample-rt and bbexample-lt
    which show the process for using a remote tarball, and a local
    tarball<br>
    <br>
    If you run<br>
    <br>
    bitbake bbexample-rt<br>
    <br>
    Bitbake will pull down the archive from <br>
    <br>
<a class="moz-txt-link-freetext" href="https://github.com/DynamicDevices/bbexample/archive/bbexample-v1.0.tar.gz">https://github.com/DynamicDevices/bbexample/archive/bbexample-v1.0.tar.gz</a><br>
    <br>
    It'll unpack the archive, build, install, package and so forth.<br>
    <br>
    As above you'll see the files in the generated archive, something
    similar to<br>
    <br>
    rpm -qlp
    tmp/deploy/rpm/armv6_vfp/bbexample-rt-1.0-r0.2.armv6_vfp.rpm<br>
    <br>
    Note that if you look in the recipe you'll see I am redefining the
    source directory to be appropriate for the structure of the
    downloaded tarball.<br>
    <br>
    This is _critical_ as otherwise bitbake won't find the files...<br>
    <br>
    # Make sure our source directory (for the build) matches the
    directory structure in the tarball<br>
    # A tagged tarball from github contains a folder which includes the
    github tag, so deal with it here<br>
    S = "${WORKDIR}/bbexample-bbexample-v${PV}"<br>
    <br>
<a class="moz-txt-link-freetext" href="https://github.com/DynamicDevices/meta-example/blob/master/recipes-example/bbexample/bbexample-rt_1.0.bb">https://github.com/DynamicDevices/meta-example/blob/master/recipes-example/bbexample/bbexample-rt_1.0.bb</a><br>
    <br>
    You can check if your source directory is set correctly for the
    tarball you are trying to build by running bitbake -c devshell
    recipename<br>
    If you drop into a directory that is more or less empty (perhaps
    apart from patches) then this is a good indicator ${S} is incorrect.
    I usually<br>
    cd .. up one level and can then usually see another folder which
    does contain the correct sources, and it is this folder name you
    need to set<br>
    the source directory to in the recipe with ${S} =
    "${WORKDIR}/correctfoldername"<br>
    <br>
    Building and Packaging from a local release tarball<br>
    ============================================<br>
    <br>
    Lastly we can do the same thing with a local tarball using the
    bbexample-lt recipe I've provided. I've put a copy of the tarball we
    used in bbexample-rt into the bbexample-1.0 folder in the bbexample
    recipe folder. I've also added a search path into the recipe so the
    bbexample-lt recipe finds the file there<br>
    <br>
    e.g.<br>
    <br>
    FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-${PV}:"<br>
    <br>
    So to build this recipe run<br>
    <br>
    bitbake bbexample-lt<br>
    <br>
    (You'll probably get some warnings during these builds as each
    recipe is building the same target files and thus overwriting shared
    files generated by the other recipes. You can ignore these)<br>
    <br>
    If we look at the resulting package(s) we should see the appropriate
    files<br>
    <br>
    rpm -qlp
    tmp/deploy/rpm/armv6_vfp/bbexample-lt-1.0-r0.0.armv6_vfp.rpm<br>
    <br>
    /usr<br>
    /usr/bin<br>
    /usr/bin/bbexample<br>
    /usr/lib<br>
    /usr/lib/libbbexample.so.1<br>
    /usr/lib/libbbexample.so.1.0.0<br>
    <br>
    ...<br>
    <br>
    I hope this helps to provide a bit of background, and perhaps a
    starting point for a working build of an example package<br>
    <br>
    Cheers,<br>
    <br>
    Alex<br>
    <br>
    <br>
  </body>
</html>

--------------040809020008040604070901--
