Return-Path: <stefan@herbrechtsmeier.net>
Received: from dd19416.kasserver.com (dd19416.kasserver.com [85.13.139.185])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 12111E00343
	for <yocto@yoctoproject.org>; Mon, 26 Aug 2013 08:56:03 -0700 (PDT)
Received: from [192.168.1.100] (blfd-5d821b21.pool.mediaWays.net
	[93.130.27.33])
	by dd19416.kasserver.com (Postfix) with ESMTPSA id EC1141840E08;
	Mon, 26 Aug 2013 17:56:00 +0200 (CEST)
Message-ID: <521B7A8F.7060503@herbrechtsmeier.net>
Date: Mon, 26 Aug 2013 17:55:59 +0200
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
	<52170AA1.4000602@herbrechtsmeier.net>
	<CAAGt+t0Ff3VAeZGXZv3tqB1DNgmeeBa73uAfKHbQFGLOU8tqOg@mail.gmail.com>
	<521A48AA.7060802@herbrechtsmeier.net>
	<CAAGt+t3bC3E=MvL-=2o3ctKf3jKt0H41_JAF605nTY0Ebt2Qiw@mail.gmail.com>
In-Reply-To: <CAAGt+t3bC3E=MvL-=2o3ctKf3jKt0H41_JAF605nTY0Ebt2Qiw@mail.gmail.com>
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
X-List-Received-Date: Mon, 26 Aug 2013 15:56:06 -0000
Content-Type: multipart/alternative;
	boundary="------------050007090901030401060904"

--------------050007090901030401060904
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Am 26.08.2013 14:42, schrieb Zafrullah Syed:
> Hi Stefan, Hi all,
>
> My build was successful with CMake. I made some changes to my recipe:
>
> DESCRIPTION = "cameracapture application"
> SECTION = "examples"
> LICENSE = "CLOSED"
> PR = "r0"
>
> DEPENDS = "opencv"
>
> SRC_URI = "git://github.com/zafrullahsyed/cameracapture.git 
> <http://github.com/zafrullahsyed/cameracapture.git>;protocol=https;tag=v0.1"
>
> S = "${WORKDIR}/git"
>
> inherit pkgconfig cmake
>
> do_install() {
>     install -d ${D}${bindir}
>     install -m 0755 cameracapture ${D}${bindir}
> }
>
> I didn't specify do_install, which caused the errors.
You shouldn't need a do_install as cmake install the binary.


> On Sun, Aug 25, 2013 at 8:10 PM, Stefan Herbrechtsmeier 
> <stefan@herbrechtsmeier.net <mailto:stefan@herbrechtsmeier.net>> wrote:
>
>     Am 25.08.2013 17:03, schrieb Zafrullah Syed:
>>     Hi Stefan,
>>
>>     I updated my recipe:
>>
>>     DESCRIPTION = "cameracapture application"
>>     SECTION = "examples"
>>     LICENSE = "CLOSED"
>>     PR = "r0"
>>
>>     DEPENDS = "opencv"
>>
>>     SRC_URI = "git://github.com/zafrullahsyed/cameracapture.git
>>     <http://github.com/zafrullahsyed/cameracapture.git>;protocol=https;tag=v0.1"
>>
>>     S = "${WORKDIR}/git"
>>     inherit pkgconfig cmake
>>
>>     I have my source file and CMakeLists.txt as tar on github. tar is
>>     not getting downloaded.
>     The tar should be in the "${WORKDIR}/git" directory but it will
>     not work as you don't tell bitbake to unpack it.
>
>     You repository with tag "v0.1" contains only a README.md!
>
>     The common use case is to put all sources into the git repository.
>     Why you want to save a tar in a git repository?
>
>
>>
>>     --> If I remove tar and keep just source file and CMakeLists.txt,
>>     then also it is not getting downloaded.
>     Have you check the content of the
>     /home/siguser/yocto/build/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/cameracapture-0.1-r0/git
>     directory?
>
>
>>     I am getting
>>
>>     CMake Error: The source directory
>>     "/home/siguser/yocto/build/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/cameracapture-0.1-r0/cameracapture-0.1"
>>     does not appear to contain CMakeLists.txt.
>             ^^^
>     Are you sure you have change the S variable? The error still
>     reference the common directory ("${WORKDIR}/${PN}-${PV}").
>>
>>     --> I copied my CMakeLists.txt file in ${WORKDIR}/git and tried
>>     the build, got this following error:
>>
>>     ERROR: Function failed: do_configure (see
>>     /home/siguser/yocto/build/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/cameracapture-0.1-r0/temp/log.do_configure.10784
>>     for further information)
>>     ERROR: Logfile of failure stored in:
>>     /home/siguser/yocto/build/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/cameracapture-0.1-r0/temp/log.do_configure.10784
>>     Log data follows:
>>     | DEBUG: Executing python function sysroot_cleansstate
>>     | DEBUG: Python function sysroot_cleansstate finished
>>     | DEBUG: SITE files ['endian-little', 'bit-32', 'arm-common',
>>     'common-linux', 'common-glibc', 'arm-linux', 'arm-linux-gnueabi',
>>     'common']
>>     | DEBUG: Executing shell function autotools_preconfigure
>>     | DEBUG: Shell function autotools_preconfigure finished
>>     | DEBUG: Executing shell function do_configure
>>     | CMake Error at
>>     /home/siguser/yocto/build/tmp/sysroots/x86_64-linux/usr/share/cmake-2.8/Modules/CMakeDetermineSystem.cmake:95
>>     (MESSAGE):
>>     |   Could not find toolchain file:
>>     |
>>     /home/siguser/yocto/build/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/cameracapture-0.1-r0/toolchain.cmake
>     It looks as something went wrong. Please clear the old package and
>     try again or increment the PR number.
>     bitbake -c cleansstate cameracapture && bitbake cameracapture
>
>
>>     | Call Stack (most recent call first):
>>     |   CMakeLists.txt:2 (project)
>>     |
>>     |
>>     | CMake Error: Error required internal CMake variable not set,
>>     cmake may be not be built correctly.
>>     | Missing variable is:
>>     | CMAKE_C_COMPILER_ENV_VAR
>>     | CMake Error: Error required internal CMake variable not set,
>>     cmake may be not be built correctly.
>>     | Missing variable is:
>>     | CMAKE_C_COMPILER
>>     | CMake Error: Could not find cmake module
>>     file:/home/siguser/yocto/build/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/cameracapture-0.1-r0/git/CMakeFiles/CMakeCCompiler.cmake
>>     | CMake Error: Error required internal CMake variable not set,
>>     cmake may be not be built correctly.
>>     | Missing variable is:
>>     | CMAKE_CXX_COMPILER_ENV_VAR
>>     | CMake Error: Error required internal CMake variable not set,
>>     cmake may be not be built correctly.
>>     | Missing variable is:
>>     | CMAKE_CXX_COMPILER
>>     | CMake Error: Could not find cmake module
>>     file:/home/siguser/yocto/build/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/cameracapture-0.1-r0/git/CMakeFiles/CMakeCXXCompiler.cmake
>>     | CMake Error: CMAKE_C_COMPILER not set, after EnableLanguage
>>     | CMake Error: CMAKE_CXX_COMPILER not set, after EnableLanguage
>>     | -- Configuring incomplete, errors occurred!
>>     | ERROR: Function failed: do_configure (see
>>     /home/siguser/yocto/build/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/cameracapture-0.1-r0/temp/log.do_configure.10784
>>     for further information)
>>     ERROR: Task 6
>>     (/home/siguser/yocto/poky/meta-bebot/recipes-bebot/cameracapture/cameracapture_0.1.bb
>>     <http://cameracapture_0.1.bb>, do_configure) failed with exit
>>     code '1'
>>
>>     Do I need to set CXX Compiler in my CMakeLists.txt?
>     No, this are subsequent errors of the missing toolchain.cmake.
>
>
>>     My CmakeLists.txt file:
>>
>>     cmake_minimum_required(VERSION 2.8)
>>     project(cameracapture)
>>     find_package( OpenCV REQUIRED )
>>     add_executable( cameracapture cameracapture.cpp )
>>     target_link_libraries( cameracapture ${OpenCV_LIBS} )
>     This looks okay.
>
>
>
>
> -- 
> Regards,
> Zafrullah Syed
>


--------------050007090901030401060904
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta content="text/html; charset=ISO-8859-1"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">Am 26.08.2013 14:42, schrieb Zafrullah
      Syed:<br>
    </div>
    <blockquote
cite="mid:CAAGt+t3bC3E=MvL-=2o3ctKf3jKt0H41_JAF605nTY0Ebt2Qiw@mail.gmail.com"
      type="cite">
      <div dir="ltr">Hi Stefan, Hi all,
        <div><br>
        </div>
        <div>My build was successful with CMake. I made some changes to
          my recipe:</div>
        <div><br>
        </div>
        <div>
          <div>DESCRIPTION = "cameracapture application"&nbsp;</div>
          <div>SECTION = "examples"&nbsp;</div>
          <div>LICENSE = "CLOSED"&nbsp;</div>
          <div>PR = "r0"&nbsp;</div>
          <div><br>
          </div>
          <div>DEPENDS = "opencv"</div>
          <div><br>
          </div>
          <div>SRC_URI = "git://<a moz-do-not-send="true"
              href="http://github.com/zafrullahsyed/cameracapture.git">github.com/zafrullahsyed/cameracapture.git</a>;protocol=https;tag=v0.1"</div>
          <div><br>
          </div>
          <div>S = "${WORKDIR}/git"</div>
          <div><br>
          </div>
          <div>inherit pkgconfig cmake<br>
          </div>
          <div><br>
          </div>
          <div>do_install() {</div>
          <div>&nbsp; &nbsp; install -d ${D}${bindir}</div>
          <div>&nbsp; &nbsp; install -m 0755 cameracapture ${D}${bindir}</div>
          <div>}</div>
        </div>
        <div><br>
        </div>
        <div>I didn't specify do_install, which caused the errors.</div>
      </div>
    </blockquote>
    You shouldn't need a do_install as cmake install the binary.<br>
    <br>
    <br>
    <blockquote
cite="mid:CAAGt+t3bC3E=MvL-=2o3ctKf3jKt0H41_JAF605nTY0Ebt2Qiw@mail.gmail.com"
      type="cite">
      <div class="gmail_extra">On Sun, Aug 25, 2013 at 8:10 PM, Stefan
        Herbrechtsmeier <span dir="ltr">&lt;<a moz-do-not-send="true"
            href="mailto:stefan@herbrechtsmeier.net" target="_blank">stefan@herbrechtsmeier.net</a>&gt;</span>
        wrote:<br>
        <div class="gmail_quote">
          <blockquote class="gmail_quote" style="margin:0 0 0
            .8ex;border-left:1px #ccc solid;padding-left:1ex">
            <div bgcolor="#FFFFFF" text="#000000">
              <div>Am 25.08.2013 17:03, schrieb Zafrullah Syed:<br>
              </div>
              <div class="im">
                <blockquote type="cite">
                  <div dir="ltr">Hi Stefan,
                    <div><br>
                    </div>
                    <div>I updated my recipe:</div>
                    <div><br>
                    </div>
                    <div>
                      <div>DESCRIPTION = "cameracapture application"&nbsp;</div>
                      <div>SECTION = "examples"&nbsp;</div>
                      <div>LICENSE = "CLOSED"&nbsp;</div>
                      <div>PR = "r0"&nbsp;</div>
                      <div><br>
                      </div>
                      <div>DEPENDS = "opencv"<br>
                      </div>
                      <div><br>
                      </div>
                      <div>SRC_URI = "git://<a moz-do-not-send="true"
                          href="http://github.com/zafrullahsyed/cameracapture.git"
                          target="_blank">github.com/zafrullahsyed/cameracapture.git</a>;protocol=https;tag=v0.1"<br>
                      </div>
                      <div><br>
                      </div>
                      <div>S = "${WORKDIR}/git"<br>
                      </div>
                      <div>inherit pkgconfig cmake<br>
                      </div>
                    </div>
                    <div><br>
                    </div>
                    <div>I have my source file and CMakeLists.txt as tar
                      on github. tar is not getting downloaded.</div>
                  </div>
                </blockquote>
              </div>
              The tar should be in the "${WORKDIR}/git" directory but it
              will not work as you don't tell bitbake to unpack it.<br>
              <br>
              You repository with tag "v0.1" contains only a README.md!<br>
              <br>
              The common use case is to put all sources into the git
              repository. Why you want to save a tar in a git
              repository?
              <div class="im"><br>
                <br>
                <blockquote type="cite">
                  <div dir="ltr">
                    <div><br>
                    </div>
                    <div>--&gt; If I remove tar and keep just source
                      file and CMakeLists.txt, then also it is not
                      getting downloaded.</div>
                  </div>
                </blockquote>
              </div>
              Have you check the content of the
              /home/siguser/yocto/build/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/cameracapture-0.1-r0/git

              directory?
              <div class="im"><br>
                <br>
                <blockquote type="cite">
                  <div dir="ltr">
                    <div> I am getting&nbsp;</div>
                    <div><br>
                    </div>
                    <div>CMake Error: The source directory
                      "/home/siguser/yocto/build/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/cameracapture-0.1-r0/cameracapture-0.1"

                      does not appear to contain CMakeLists.txt.</div>
                  </div>
                </blockquote>
              </div>
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ^^^<br>
              Are you sure you have change the S variable? The error
              still reference the common directory
              ("${WORKDIR}/${PN}-${PV}").
              <div class="im">
                <blockquote type="cite">
                  <div dir="ltr">
                    <div><br>
                    </div>
                    <div>--&gt; I copied my CMakeLists.txt file in
                      ${WORKDIR}/git and tried the build, got this
                      following error:</div>
                    <div><br>
                    </div>
                    <div>
                      <div>
                        <div>ERROR: Function failed: do_configure (see
                          /home/siguser/yocto/build/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/cameracapture-0.1-r0/temp/log.do_configure.10784

                          for further information)</div>
                        <div>ERROR: Logfile of failure stored in:
/home/siguser/yocto/build/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/cameracapture-0.1-r0/temp/log.do_configure.10784</div>
                        <div>Log data follows:</div>
                        <div>| DEBUG: Executing python function
                          sysroot_cleansstate</div>
                        <div>| DEBUG: Python function
                          sysroot_cleansstate finished</div>
                        <div>| DEBUG: SITE files ['endian-little',
                          'bit-32', 'arm-common', 'common-linux',
                          'common-glibc', 'arm-linux',
                          'arm-linux-gnueabi', 'common']</div>
                        <div>| DEBUG: Executing shell function
                          autotools_preconfigure</div>
                        <div>| DEBUG: Shell function
                          autotools_preconfigure finished</div>
                        <div>| DEBUG: Executing shell function
                          do_configure</div>
                        <div>| CMake Error at
                          /home/siguser/yocto/build/tmp/sysroots/x86_64-linux/usr/share/cmake-2.8/Modules/CMakeDetermineSystem.cmake:95

                          (MESSAGE):</div>
                        <div>| &nbsp; Could not find toolchain file:</div>
                        <div>| &nbsp;
/home/siguser/yocto/build/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/cameracapture-0.1-r0/toolchain.cmake</div>
                      </div>
                    </div>
                  </div>
                </blockquote>
              </div>
              It looks as something went wrong. Please clear the old
              package and try again or increment the PR number.<br>
              bitbake -c cleansstate cameracapture &amp;&amp; bitbake
              cameracapture
              <div class="im"><br>
                <br>
                <blockquote type="cite">
                  <div dir="ltr">
                    <div>
                      <div>
                        <div>| Call Stack (most recent call first):</div>
                        <div> | &nbsp; CMakeLists.txt:2 (project)</div>
                        <div>|&nbsp;</div>
                        <div>|&nbsp;</div>
                        <div>| CMake Error: Error required internal
                          CMake variable not set, cmake may be not be
                          built correctly.</div>
                        <div>| Missing variable is:</div>
                        <div>| CMAKE_C_COMPILER_ENV_VAR</div>
                        <div>| CMake Error: Error required internal
                          CMake variable not set, cmake may be not be
                          built correctly.</div>
                        <div>| Missing variable is:</div>
                        <div>| CMAKE_C_COMPILER</div>
                        <div>| CMake Error: Could not find cmake module
                          <a moz-do-not-send="true">file:/home/siguser/yocto/build/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/cameracapture-0.1-r0/git/CMakeFiles/CMakeCCompiler.cmake</a></div>
                        <div>| CMake Error: Error required internal
                          CMake variable not set, cmake may be not be
                          built correctly.</div>
                        <div>| Missing variable is:</div>
                        <div>| CMAKE_CXX_COMPILER_ENV_VAR</div>
                        <div>| CMake Error: Error required internal
                          CMake variable not set, cmake may be not be
                          built correctly.</div>
                        <div>| Missing variable is:</div>
                        <div>| CMAKE_CXX_COMPILER</div>
                        <div>| CMake Error: Could not find cmake module
                          <a moz-do-not-send="true">file:/home/siguser/yocto/build/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/cameracapture-0.1-r0/git/CMakeFiles/CMakeCXXCompiler.cmake</a></div>
                        <div>| CMake Error: CMAKE_C_COMPILER not set,
                          after EnableLanguage</div>
                        <div>| CMake Error: CMAKE_CXX_COMPILER not set,
                          after EnableLanguage</div>
                        <div>| -- Configuring incomplete, errors
                          occurred!</div>
                        <div>| ERROR: Function failed: do_configure (see
                          /home/siguser/yocto/build/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/cameracapture-0.1-r0/temp/log.do_configure.10784

                          for further information)</div>
                        <div>ERROR: Task 6
                          (/home/siguser/yocto/poky/meta-bebot/recipes-bebot/cameracapture/<a
                            moz-do-not-send="true"
                            href="http://cameracapture_0.1.bb"
                            target="_blank">cameracapture_0.1.bb</a>,
                          do_configure) failed with exit code '1'</div>
                      </div>
                    </div>
                    <div><br>
                    </div>
                    <div>Do I need to set CXX Compiler in my
                      CMakeLists.txt?</div>
                  </div>
                </blockquote>
              </div>
              No, this are subsequent errors of the missing
              toolchain.cmake.
              <div class="im"><br>
                <br>
                <blockquote type="cite">
                  <div dir="ltr">My CmakeLists.txt file:
                    <div><br>
                    </div>
                    <div>
                      <div>cmake_minimum_required(VERSION 2.8)</div>
                      <div>project(cameracapture)</div>
                      <div>find_package( OpenCV REQUIRED )</div>
                      <div>add_executable( cameracapture
                        cameracapture.cpp )</div>
                      <div>target_link_libraries( cameracapture
                        ${OpenCV_LIBS} )</div>
                    </div>
                  </div>
                </blockquote>
              </div>
              This looks okay.<br>
              <br>
            </div>
          </blockquote>
        </div>
        <br>
        <br clear="all">
        <div><br>
        </div>
        -- <br>
        <span
style="font-family:arial,sans-serif;font-size:13px;border-collapse:collapse;color:rgb(136,136,136)">Regards,<br>
          Zafrullah Syed</span>
        <div><font color="#888888" face="arial, sans-serif"><span
              style="border-collapse:collapse"><br>
            </span></font></div>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------050007090901030401060904--
