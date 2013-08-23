Return-Path: <stefan@herbrechtsmeier.net>
Received: from dd19416.kasserver.com (dd19416.kasserver.com [85.13.139.185])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4040EE005B4
	for <yocto@yoctoproject.org>; Fri, 23 Aug 2013 00:09:23 -0700 (PDT)
Received: from [192.168.1.100] (blfd-4d08e869.pool.mediaWays.net
	[77.8.232.105])
	by dd19416.kasserver.com (Postfix) with ESMTPSA id 03E331840C6C;
	Fri, 23 Aug 2013 09:09:21 +0200 (CEST)
Message-ID: <52170AA1.4000602@herbrechtsmeier.net>
Date: Fri, 23 Aug 2013 09:09:21 +0200
From: Stefan Herbrechtsmeier <stefan@herbrechtsmeier.net>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130804 Thunderbird/17.0.8
MIME-Version: 1.0
To: Zafrullah Syed <zafrullahmehdi@gmail.com>
References: <CAAGt+t0w9Rtia4vVJujgjTfmEU709WyhjCYSPP7PThMN+vpOdg@mail.gmail.com>
	<CAJTo0LYTB2eby76YsAtj+YM9jfAo1oia4TvRUXgiNU+DKiuOFQ@mail.gmail.com>
	<CAAGt+t2gxfmg8cJ+izKmejXcywknPpOvYMrRPUgKN5fHHa-gmw@mail.gmail.com>
	<CAAGt+t13OZ88fi_9foDDp+FeD9VOkBDip1RVQYxWkNejmvifeg@mail.gmail.com>
	<CAJTo0LYqaCwHTLnxUwPVME_zFNbWEVXHZoJpiWTTw-wBWn5xeQ@mail.gmail.com>
	<52161E20.3010800@balister.org>
	<CAAGt+t3Q3GaitOuGTob0faWa4PU1sqmBAwLrdNetMK1PZLDF5Q@mail.gmail.com>
In-Reply-To: <CAAGt+t3Q3GaitOuGTob0faWa4PU1sqmBAwLrdNetMK1PZLDF5Q@mail.gmail.com>
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: bitbake with cmake recipe
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
X-List-Received-Date: Fri, 23 Aug 2013 07:09:24 -0000
Content-Type: multipart/alternative;
	boundary="------------050401020509050207020901"

--------------050401020509050207020901
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Am 22.08.2013 20:13, schrieb Zafrullah Syed:
> Hi all,
>
> I am newbie and I am learning stuff.
>
> I have a c++ code and CMakeLists.txt on Github which needs to be run 
> with Cmake. I am trying to get that code embed into my build using my 
> own recipe. This is my first experience with Cmake. I have no clue 
> what should I write in my recipe.
>
> My recipe is as follows:
>
> DESCRIPTION = "cameracapture application"
> SECTION = "examples"
> LICENSE = "CLOSED"
> PR = "r0"
>
> DEPENDS += "opencv"
> inherit cmake pkgconfig
>
> SRC_URI = 
> "git://github.com/zafrullahsyed/cameracapture.git;protocol=https;tag=v0.1 
> <http://github.com/zafrullahsyed/cameracapture.git;protocol=https;tag=v0.1>"
>
> do_configure() {
>     ${BUILD_CXX} cameracapture.cpp -o cameracapture
>     }
Why you want to compile something during configure? Remove this function.

>
> EXTRA_OECMAKE=""
You don't need this if you don't need to pass additional definitions to 
cmake.

>
> I know this recipe is wrong, I looked up many other recipes that use Cmake
> http://git.openembedded.org/meta-openembedded/tree/meta-oe/recipes-connectivity/gnuradio/gnuradio_git.bb
>
> each of them have their own parameters and functions.
>
> Everytime I build my system I get this error:
>
> ERROR: Function failed: do_configure (see 
> /home/siguser/yocto/build/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/cameracapture-0.1-r0/temp/log.do_configure.1410 
> for further information)
> ERROR: Logfile of failure stored in: 
> /home/siguser/yocto/build/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/cameracapture-0.1-r0/temp/log.do_configure.1410
> Log data follows:
> | DEBUG: Executing python function sysroot_cleansstate
> | DEBUG: Python function sysroot_cleansstate finished
> | DEBUG: SITE files ['endian-little', 'bit-32', 'arm-common', 
> 'common-linux', 'common-glibc', 'arm-linux', 'arm-linux-gnueabi', 
> 'common']
> | DEBUG: Executing shell function autotools_preconfigure
> | DEBUG: Shell function autotools_preconfigure finished
> | DEBUG: Executing shell function do_configure
> | CMake Error: The source directory 
> "/home/siguser/yocto/build/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/cameracapture-0.1-r0/cameracapture-0.1" 
> does not appear to contain CMakeLists.txt.
Are you sure this directory exists and contain the CMakeLists.txt file? 
Maybe you have to adjust the S variable to point to the directory of 
your source code.

> | Specify --help for usage, or press the help button on the CMake GUI.
> | ERROR: Function failed: do_configure (see 
> /home/siguser/yocto/build/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/cameracapture-0.1-r0/temp/log.do_configure.1410 
> for further information)
> ERROR: Task 579 
> (/home/siguser/yocto/poky/meta-bebot/recipes-bebot/cameracapture/cameracapture_0.1.bb 
> <http://cameracapture_0.1.bb>, do_configure) failed with exit code '1'
>
> I have no clue what I should write in my recipe file. Yocto doesn't 
> have any tutorial for this.
>
> Can anyone give some hints where I am doing wrong or what should be 
> included in my recipe?
You can take a look at one of my simple recipes:
http://opensource.cit-ec.de/projects/meta-openrobotix/repository/revisions/master/entry/recipes-connectivity/rsb/rsb_git.bb


--------------050401020509050207020901
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta content="text/html; charset=ISO-8859-1"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">Am 22.08.2013 20:13, schrieb Zafrullah
      Syed:<br>
    </div>
    <blockquote
cite="mid:CAAGt+t3Q3GaitOuGTob0faWa4PU1sqmBAwLrdNetMK1PZLDF5Q@mail.gmail.com"
      type="cite">
      <div dir="ltr">Hi all,
        <div><br>
        </div>
        <div>I am newbie and I am learning stuff.</div>
        <div><br>
        </div>
        <div>I have a c++ code and CMakeLists.txt on Github which needs
          to be run with Cmake. I am trying to get that code embed into
          my build using my own recipe. This is my first experience with
          Cmake. I have no clue what should I write in my recipe.</div>
        <div><br>
        </div>
        <div>My recipe is as follows:</div>
        <div><br>
        </div>
        <div>DESCRIPTION = "cameracapture application"&nbsp;</div>
        <div>SECTION = "examples"&nbsp;</div>
        <div>LICENSE = "CLOSED"&nbsp;</div>
        <div>PR = "r0"&nbsp;</div>
        <div><br>
        </div>
        <div>DEPENDS += "opencv"</div>
        <div>inherit cmake pkgconfig</div>
        <div><br>
        </div>
        <div>SRC_URI = "git://<a moz-do-not-send="true"
href="http://github.com/zafrullahsyed/cameracapture.git;protocol=https;tag=v0.1">github.com/zafrullahsyed/cameracapture.git;protocol=https;tag=v0.1</a>"</div>
        <div><br>
        </div>
        <div>do_configure() {</div>
        <div>&nbsp; &nbsp; ${BUILD_CXX} cameracapture.cpp -o cameracapture</div>
        <div>&nbsp; &nbsp; }</div>
      </div>
    </blockquote>
    Why you want to compile something during configure? Remove this
    function.<br>
    <br>
    <blockquote
cite="mid:CAAGt+t3Q3GaitOuGTob0faWa4PU1sqmBAwLrdNetMK1PZLDF5Q@mail.gmail.com"
      type="cite">
      <div dir="ltr">
        <div><br>
        </div>
        <div>EXTRA_OECMAKE="" <br>
        </div>
      </div>
    </blockquote>
    You don't need this if you don't need to pass additional definitions
    to cmake.<br>
    <br>
    <blockquote
cite="mid:CAAGt+t3Q3GaitOuGTob0faWa4PU1sqmBAwLrdNetMK1PZLDF5Q@mail.gmail.com"
      type="cite">
      <div dir="ltr">
        <div><br>
        </div>
        <div>I know this recipe is wrong, I looked up many other recipes
          that use Cmake</div>
        <div><a moz-do-not-send="true"
href="http://git.openembedded.org/meta-openembedded/tree/meta-oe/recipes-connectivity/gnuradio/gnuradio_git.bb">http://git.openembedded.org/meta-openembedded/tree/meta-oe/recipes-connectivity/gnuradio/gnuradio_git.bb</a><br>
        </div>
        <div><br>
        </div>
        <div>each of them have their own parameters and functions.<br>
        </div>
        <div><br>
        </div>
        <div>Everytime I build my system I get this error:<br>
        </div>
        <div><br>
        </div>
        <div>
          <div>ERROR: Function failed: do_configure (see
            /home/siguser/yocto/build/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/cameracapture-0.1-r0/temp/log.do_configure.1410
            for further information)</div>
          <div>ERROR: Logfile of failure stored in:
/home/siguser/yocto/build/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/cameracapture-0.1-r0/temp/log.do_configure.1410</div>
          <div>Log data follows:</div>
          <div>| DEBUG: Executing python function sysroot_cleansstate</div>
          <div>| DEBUG: Python function sysroot_cleansstate finished</div>
          <div>| DEBUG: SITE files ['endian-little', 'bit-32',
            'arm-common', 'common-linux', 'common-glibc', 'arm-linux',
            'arm-linux-gnueabi', 'common']</div>
          <div>| DEBUG: Executing shell function autotools_preconfigure</div>
          <div>| DEBUG: Shell function autotools_preconfigure finished</div>
          <div>| DEBUG: Executing shell function do_configure</div>
          <div>| CMake Error: The source directory
            "/home/siguser/yocto/build/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/cameracapture-0.1-r0/cameracapture-0.1"
            does not appear to contain CMakeLists.txt.</div>
        </div>
      </div>
    </blockquote>
    Are you sure this directory exists and contain the CMakeLists.txt
    file? Maybe you have to adjust the S variable to point to the
    directory of your source code.<br>
    <br>
    <blockquote
cite="mid:CAAGt+t3Q3GaitOuGTob0faWa4PU1sqmBAwLrdNetMK1PZLDF5Q@mail.gmail.com"
      type="cite">
      <div dir="ltr">
        <div>
          <div>| Specify --help for usage, or press the help button on
            the CMake GUI.</div>
          <div>| ERROR: Function failed: do_configure (see
            /home/siguser/yocto/build/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/cameracapture-0.1-r0/temp/log.do_configure.1410
            for further information)</div>
          <div>ERROR: Task 579
            (/home/siguser/yocto/poky/meta-bebot/recipes-bebot/cameracapture/<a
              moz-do-not-send="true" href="http://cameracapture_0.1.bb">cameracapture_0.1.bb</a>,
            do_configure) failed with exit code '1'</div>
        </div>
        <div><br>
        </div>
        <div>I have no clue what I should write in my recipe file. Yocto
          doesn't have any tutorial for this.</div>
        <div><br>
        </div>
        <div>Can anyone give some hints where I am doing wrong or what
          should be included in my recipe?</div>
      </div>
    </blockquote>
    You can take a look at one of my simple recipes:<br>
<a class="moz-txt-link-freetext" href="http://opensource.cit-ec.de/projects/meta-openrobotix/repository/revisions/master/entry/recipes-connectivity/rsb/rsb_git.bb">http://opensource.cit-ec.de/projects/meta-openrobotix/repository/revisions/master/entry/recipes-connectivity/rsb/rsb_git.bb</a><br>
    <br>
  </body>
</html>

--------------050401020509050207020901--
