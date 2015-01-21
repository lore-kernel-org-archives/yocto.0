Return-Path: <anibal.limon@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CC444E008A7; Wed, 21 Jan 2015 14:38:58 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_HI autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [134.134.136.20 listed in list.dnswl.org]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7D603E0084E
	for <yocto@yoctoproject.org>; Wed, 21 Jan 2015 14:38:46 -0800 (PST)
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by orsmga101.jf.intel.com with ESMTP; 21 Jan 2015 14:38:46 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,862,1389772800"; 
	d="scan'208,217";a="443387368"
Received: from alimon-thinkpad-w540.zpn.intel.com (HELO [10.219.4.161])
	([10.219.4.161])
	by FMSMGA003.fm.intel.com with ESMTP; 21 Jan 2015 14:25:24 -0800
Message-ID: <54C02A7C.2090000@linux.intel.com>
Date: Wed, 21 Jan 2015 16:38:52 -0600
From: =?windows-1252?Q?An=EDbal_Lim=F3n?= <anibal.limon@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.3.0
MIME-Version: 1.0
To: Cleiton Bueno <cleitonrbueno@gmail.com>, yocto@yoctoproject.org
References: <CABKVDBB5PioZdX48N2eRBYNz3QBH+8FVz6+GK5emqC4GRO8EAA@mail.gmail.com>
In-Reply-To: <CABKVDBB5PioZdX48N2eRBYNz3QBH+8FVz6+GK5emqC4GRO8EAA@mail.gmail.com>
Subject: Re: Problem recipe build with package debian
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
X-List-Received-Date: Wed, 21 Jan 2015 22:38:58 -0000
Content-Type: multipart/alternative;
	boundary="------------000604000701000800070304"

--------------000604000701000800070304
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

Hi Cleiton,

If you want to build deb packages you need to set in your local.conf,

PACKAGE_CLASSES ?= "package_deb"

Also if you want package-management support in the TARGET_IMAGE you need 
to add package-management to
EXTRA_IMAGE_FEATURES.

Regards

     alimon

On 21/01/15 15:43, Cleiton Bueno wrote:
> I have a deb package with several scripts and configurations that I 
> want to use the BBB.
> I created a recipe, as well as other modules and packages to install.
>
>
> The recipe I'm using is equal below, (removed some details, is just 
> the example base)
>
>
>
> SUMMARY = ""
> DESCRIPTION = ""
> HOMEPAGE = ""
>
>
>
> LIC_FILES_CHKSUM = "file://LICENSE;md5=1726e2117494ba3e13e1c3d93f795360"
>
> SRC_URI = "file://my_pkg.deb"
>
> SRC_URI[md5sum] = ""
> SRC_URI[sha256sum] = ""
>
> S = "${WORKDIR}/my_pkg-${PV}"
>
> inherit package_deb
>
>
> do_install_append() {
> install -m 755 -D ${WORKDIR}/my_pkg.deb
> }
>
>
>
>
> Has anyone created recipe to install deb packages?
>
>
>
>
> My bibake process build...
>
>
> Reading package lists...
> Building dependency tree...
> Reading state information...
> Package pkgAll is not available, but is referred to by another package.
> This may mean that the package is missing, has been obsoleted, or
> is only available from another source
>
> W: Unable to read 
> /home/bueno/yocto/poky/projTest/tmp/work/qemux86-poky-linux/projTest/1.0-r0/apt/preferences.d/ 
> - DirectoryExists (2: No such file or directory)
> E: Package 'pkgAll' has no installation candidate
>
> ERROR: Function failed: do_rootfs
> ERROR: Logfile of failure stored in: 
> /home/bueno/yocto/poky/projTest/tmp/work/qemux86-poky-linux/projTest/1.0-r0/temp/log.do_rootfs.27791
> ERROR: Task 7 
> (/home/bueno/yocto/poky/projTest//../meta-pkgAll/recipes-core/images/projTest.bb, 
> do_rootfs) failed with exit code '1'
>
>
>
> Now, my recipe the package deb:
>
> SUMMARY = "XXXXXX"
> DESCRIPTION = "XXXXXXXXXXXXXX"
>
> LICENSE = "CLOSED"
>
>
> SRC_URI = "file://projTest_1.0.deb"
>
> SRC_URI[md5sum] = "32d0c2b332440a47dd370eXXXXXXXXXX"
> SRC_URI[sha256sum] = 
> "42ebcf856aa626aa6d021173f4d931e0c84a0a27808d147db89942XXXXXXXXXX"
>
>
>
> inherit bin_package pkgconfig
>
>
> install_deb() {
> ${STAGING_BINDIR_NATIVE}/dpkg --root=${IMAGE_ROOTFS}/ 
> --admindir=${IMAGE_ROOTFS}/var/lib/dpkg/ -i file://projTest_1.0.deb
> }
> ROOTFS_POSTPROCESS_COMMAND += "install_deb; "
>
>
>
>
> -- 
> /*Att,
> Cleiton Bueno*/
>
>
>


--------------000604000701000800070304
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    Hi Cleiton,<br>
    <br>
    If you want to build deb packages you need to set in your
    local.conf,<br>
    <br>
    PACKAGE_CLASSES ?= "package_deb"<br>
    <br>
    Also if you want package-management support in the TARGET_IMAGE you
    need to add package-management to<br>
    EXTRA_IMAGE_FEATURES.<br>
    <br>
    Regards<br>
    <br>
        alimon<br>
    <br>
    <div class="moz-cite-prefix">On 21/01/15 15:43, Cleiton Bueno wrote:<br>
    </div>
    <blockquote
cite="mid:CABKVDBB5PioZdX48N2eRBYNz3QBH+8FVz6+GK5emqC4GRO8EAA@mail.gmail.com"
      type="cite">
      <div dir="ltr"><span
          style="font-family:Arial,Helvetica,sans-serif;font-size:13px">I
          have a deb package with several scripts and configurations
          that I want to use the BBB.</span><br
          style="font-family:Arial,Helvetica,sans-serif;font-size:13px">
        <span
          style="font-family:Arial,Helvetica,sans-serif;font-size:13px">I
          created a recipe, as well as other modules and packages to
          install.</span><br
          style="font-family:Arial,Helvetica,sans-serif;font-size:13px">
        <br
          style="font-family:Arial,Helvetica,sans-serif;font-size:13px">
        <br
          style="font-family:Arial,Helvetica,sans-serif;font-size:13px">
        <span
          style="font-family:Arial,Helvetica,sans-serif;font-size:13px">The
          recipe I'm using is equal below, (removed some details, is
          just the example base)</span><br
          style="font-family:Arial,Helvetica,sans-serif;font-size:13px">
        <br
          style="font-family:Arial,Helvetica,sans-serif;font-size:13px">
        <br
          style="font-family:Arial,Helvetica,sans-serif;font-size:13px">
        <br
          style="font-family:Arial,Helvetica,sans-serif;font-size:13px">
        <span
          style="font-family:Arial,Helvetica,sans-serif;font-size:13px">SUMMARY
          = ""</span><br
          style="font-family:Arial,Helvetica,sans-serif;font-size:13px">
        <span
          style="font-family:Arial,Helvetica,sans-serif;font-size:13px">DESCRIPTION
          = ""</span><br
          style="font-family:Arial,Helvetica,sans-serif;font-size:13px">
        <span
          style="font-family:Arial,Helvetica,sans-serif;font-size:13px">HOMEPAGE
          = ""</span><br
          style="font-family:Arial,Helvetica,sans-serif;font-size:13px">
        <br
          style="font-family:Arial,Helvetica,sans-serif;font-size:13px">
        <br
          style="font-family:Arial,Helvetica,sans-serif;font-size:13px">
        <br
          style="font-family:Arial,Helvetica,sans-serif;font-size:13px">
        <span
          style="font-family:Arial,Helvetica,sans-serif;font-size:13px">LIC_FILES_CHKSUM
          = "<a class="moz-txt-link-freetext" href="file://LICENSE;md5=">file://LICENSE;md5=</a></span><span
          style="font-family:Arial,Helvetica,sans-serif;font-size:13px">1726e2117494ba3e13e1c3d93f7953</span><span
          style="font-family:Arial,Helvetica,sans-serif;font-size:13px">60"</span><br
          style="font-family:Arial,Helvetica,sans-serif;font-size:13px">
        <br
          style="font-family:Arial,Helvetica,sans-serif;font-size:13px">
        <span
          style="font-family:Arial,Helvetica,sans-serif;font-size:13px">SRC_URI
          = <a class="moz-txt-link-rfc2396E" href="file://my_pkg.deb">"file://my_pkg.deb"</a></span><br
          style="font-family:Arial,Helvetica,sans-serif;font-size:13px">
        <br
          style="font-family:Arial,Helvetica,sans-serif;font-size:13px">
        <span
          style="font-family:Arial,Helvetica,sans-serif;font-size:13px">SRC_URI[md5sum]
          = ""</span><br
          style="font-family:Arial,Helvetica,sans-serif;font-size:13px">
        <span
          style="font-family:Arial,Helvetica,sans-serif;font-size:13px">SRC_URI[sha256sum]
          = ""</span><br
          style="font-family:Arial,Helvetica,sans-serif;font-size:13px">
        <br
          style="font-family:Arial,Helvetica,sans-serif;font-size:13px">
        <span
          style="font-family:Arial,Helvetica,sans-serif;font-size:13px">S
          = "${WORKDIR}/my_pkg-${PV}"</span><br
          style="font-family:Arial,Helvetica,sans-serif;font-size:13px">
        <br
          style="font-family:Arial,Helvetica,sans-serif;font-size:13px">
        <span
          style="font-family:Arial,Helvetica,sans-serif;font-size:13px">inherit
          package_deb</span><br
          style="font-family:Arial,Helvetica,sans-serif;font-size:13px">
        <br
          style="font-family:Arial,Helvetica,sans-serif;font-size:13px">
        <br
          style="font-family:Arial,Helvetica,sans-serif;font-size:13px">
        <span
          style="font-family:Arial,Helvetica,sans-serif;font-size:13px">do_install_append()
          {</span><br
          style="font-family:Arial,Helvetica,sans-serif;font-size:13px">
        <span
          style="font-family:Arial,Helvetica,sans-serif;font-size:13px">   
          install -m 755 -D ${WORKDIR}/my_pkg.deb</span><br
          style="font-family:Arial,Helvetica,sans-serif;font-size:13px">
        <span
          style="font-family:Arial,Helvetica,sans-serif;font-size:13px">}</span><br
          style="font-family:Arial,Helvetica,sans-serif;font-size:13px">
        <br
          style="font-family:Arial,Helvetica,sans-serif;font-size:13px">
        <br
          style="font-family:Arial,Helvetica,sans-serif;font-size:13px">
        <br
          style="font-family:Arial,Helvetica,sans-serif;font-size:13px">
        <br
          style="font-family:Arial,Helvetica,sans-serif;font-size:13px">
        <span
          style="font-family:Arial,Helvetica,sans-serif;font-size:13px">Has
          anyone created recipe to install deb packages?</span>
        <div><font face="Arial, Helvetica, sans-serif"><br>
          </font></div>
        <div><font face="Arial, Helvetica, sans-serif"><br>
          </font></div>
        <div><font face="Arial, Helvetica, sans-serif"><br>
          </font></div>
        <div><font face="Arial, Helvetica, sans-serif"><br>
          </font></div>
        <div><span
            style="font-family:Arial,Helvetica,sans-serif;font-size:13px">My
            bibake process build...</span><br
            style="font-family:Arial,Helvetica,sans-serif;font-size:13px">
          <br
            style="font-family:Arial,Helvetica,sans-serif;font-size:13px">
          <br
            style="font-family:Arial,Helvetica,sans-serif;font-size:13px">
          <span
            style="font-family:Arial,Helvetica,sans-serif;font-size:13px">Reading
            package lists...</span><br
            style="font-family:Arial,Helvetica,sans-serif;font-size:13px">
          <span
            style="font-family:Arial,Helvetica,sans-serif;font-size:13px">Building
            dependency tree...</span><br
            style="font-family:Arial,Helvetica,sans-serif;font-size:13px">
          <span
            style="font-family:Arial,Helvetica,sans-serif;font-size:13px">Reading
            state information...</span><br
            style="font-family:Arial,Helvetica,sans-serif;font-size:13px">
          <span
            style="font-family:Arial,Helvetica,sans-serif;font-size:13px">Package
            pkgAll is not available, but is referred to by another
            package.</span><br
            style="font-family:Arial,Helvetica,sans-serif;font-size:13px">
          <span
            style="font-family:Arial,Helvetica,sans-serif;font-size:13px">This
            may mean that the package is missing, has been obsoleted, or</span><br
style="font-family:Arial,Helvetica,sans-serif;font-size:13px">
          <span
            style="font-family:Arial,Helvetica,sans-serif;font-size:13px">is
            only available from another source</span><br
            style="font-family:Arial,Helvetica,sans-serif;font-size:13px">
          <br
            style="font-family:Arial,Helvetica,sans-serif;font-size:13px">
          <span
            style="font-family:Arial,Helvetica,sans-serif;font-size:13px">W:
            Unable to read /home/bueno/yocto/poky/</span><span
            style="font-family:Arial,Helvetica,sans-serif;font-size:13px">projTest/tmp/work/qemux86-</span><span
style="font-family:Arial,Helvetica,sans-serif;font-size:13px">poky-linux/projTest/1.0-r0/</span><span
style="font-family:Arial,Helvetica,sans-serif;font-size:13px">apt/preferences.d/
            - DirectoryExists (2: No such file or directory)</span><br
            style="font-family:Arial,Helvetica,sans-serif;font-size:13px">
          <span
            style="font-family:Arial,Helvetica,sans-serif;font-size:13px">E:
            Package 'pkgAll' has no installation candidate</span><br
            style="font-family:Arial,Helvetica,sans-serif;font-size:13px">
          <br
            style="font-family:Arial,Helvetica,sans-serif;font-size:13px">
          <span
            style="font-family:Arial,Helvetica,sans-serif;font-size:13px">ERROR:
            Function failed: do_rootfs</span><br
            style="font-family:Arial,Helvetica,sans-serif;font-size:13px">
          <span
            style="font-family:Arial,Helvetica,sans-serif;font-size:13px">ERROR:
            Logfile of failure stored in: /home/bueno/yocto/poky/</span><span
style="font-family:Arial,Helvetica,sans-serif;font-size:13px">projTest/tmp/work/qemux86-</span><span
style="font-family:Arial,Helvetica,sans-serif;font-size:13px">poky-linux/projTest/1.0-r0/</span><span
style="font-family:Arial,Helvetica,sans-serif;font-size:13px">temp/log.do_rootfs.27791</span><br
style="font-family:Arial,Helvetica,sans-serif;font-size:13px">
          <span
            style="font-family:Arial,Helvetica,sans-serif;font-size:13px">ERROR:
            Task 7 (/home/bueno/yocto/poky/</span><span
            style="font-family:Arial,Helvetica,sans-serif;font-size:13px">projTest//../meta-pkgAll/</span><span
style="font-family:Arial,Helvetica,sans-serif;font-size:13px">recipes-core/images/projTest.</span><span
style="font-family:Arial,Helvetica,sans-serif;font-size:13px">bb,
            do_rootfs) failed with exit code '1'</span><br
            style="font-family:Arial,Helvetica,sans-serif;font-size:13px">
          <br
            style="font-family:Arial,Helvetica,sans-serif;font-size:13px">
          <br
            style="font-family:Arial,Helvetica,sans-serif;font-size:13px">
          <br
            style="font-family:Arial,Helvetica,sans-serif;font-size:13px">
          <span
            style="font-family:Arial,Helvetica,sans-serif;font-size:13px">Now,
            my recipe the package deb:</span><br
            style="font-family:Arial,Helvetica,sans-serif;font-size:13px">
          <br
            style="font-family:Arial,Helvetica,sans-serif;font-size:13px">
          <span
            style="font-family:Arial,Helvetica,sans-serif;font-size:13px">SUMMARY
            = "XXXXXX"</span><br
            style="font-family:Arial,Helvetica,sans-serif;font-size:13px">
          <span
            style="font-family:Arial,Helvetica,sans-serif;font-size:13px">DESCRIPTION
            = "XXXXXXXXXXXXXX"</span><br
            style="font-family:Arial,Helvetica,sans-serif;font-size:13px">
          <br
            style="font-family:Arial,Helvetica,sans-serif;font-size:13px">
          <span
            style="font-family:Arial,Helvetica,sans-serif;font-size:13px">LICENSE
            = "CLOSED"</span><br
            style="font-family:Arial,Helvetica,sans-serif;font-size:13px">
          <br
            style="font-family:Arial,Helvetica,sans-serif;font-size:13px">
          <br
            style="font-family:Arial,Helvetica,sans-serif;font-size:13px">
          <span
            style="font-family:Arial,Helvetica,sans-serif;font-size:13px">SRC_URI
            = <a class="moz-txt-link-rfc2396E" href="file://projTest_1.0.deb">"file://projTest_1.0.deb"</a></span><br
            style="font-family:Arial,Helvetica,sans-serif;font-size:13px">
          <br
            style="font-family:Arial,Helvetica,sans-serif;font-size:13px">
          <span
            style="font-family:Arial,Helvetica,sans-serif;font-size:13px">SRC_URI[md5sum]
            = "</span><span
            style="font-family:Arial,Helvetica,sans-serif;font-size:13px">32d0c2b332440a47dd370eXXXXXXXX</span><span
style="font-family:Arial,Helvetica,sans-serif;font-size:13px">XX"</span><br
style="font-family:Arial,Helvetica,sans-serif;font-size:13px">
          <span
            style="font-family:Arial,Helvetica,sans-serif;font-size:13px">SRC_URI[sha256sum]
            = "</span><span
            style="font-family:Arial,Helvetica,sans-serif;font-size:13px">42ebcf856aa626aa6d021173f4d931</span><span
style="font-family:Arial,Helvetica,sans-serif;font-size:13px">e0c84a0a27808d147db89942XXXXXX</span><span
style="font-family:Arial,Helvetica,sans-serif;font-size:13px">XXXX"</span><br
style="font-family:Arial,Helvetica,sans-serif;font-size:13px">
          <br
            style="font-family:Arial,Helvetica,sans-serif;font-size:13px">
          <br
            style="font-family:Arial,Helvetica,sans-serif;font-size:13px">
          <br
            style="font-family:Arial,Helvetica,sans-serif;font-size:13px">
          <span
            style="font-family:Arial,Helvetica,sans-serif;font-size:13px">inherit
            bin_package pkgconfig</span><br
            style="font-family:Arial,Helvetica,sans-serif;font-size:13px">
          <br
            style="font-family:Arial,Helvetica,sans-serif;font-size:13px">
          <br
            style="font-family:Arial,Helvetica,sans-serif;font-size:13px">
          <span
            style="font-family:Arial,Helvetica,sans-serif;font-size:13px">install_deb()
            {                             </span><span
            style="font-family:Arial,Helvetica,sans-serif;font-size:13px">                              </span><span
style="font-family:Arial,Helvetica,sans-serif;font-size:13px">   </span><br
style="font-family:Arial,Helvetica,sans-serif;font-size:13px">
          <span
            style="font-family:Arial,Helvetica,sans-serif;font-size:13px">   
            ${STAGING_BINDIR_NATIVE}/dpkg --root=${IMAGE_ROOTFS}/
            --admindir=${IMAGE_ROOTFS}/</span><span
            style="font-family:Arial,Helvetica,sans-serif;font-size:13px">var/lib/dpkg/
            -i <a class="moz-txt-link-freetext" href="file://projTest_1.0.deb">file://projTest_1.0.deb</a></span><br
            style="font-family:Arial,Helvetica,sans-serif;font-size:13px">
          <span
            style="font-family:Arial,Helvetica,sans-serif;font-size:13px">}                             </span><span
style="font-family:Arial,Helvetica,sans-serif;font-size:13px">                              </span><span
style="font-family:Arial,Helvetica,sans-serif;font-size:13px">                    </span><br
style="font-family:Arial,Helvetica,sans-serif;font-size:13px">
          <span
            style="font-family:Arial,Helvetica,sans-serif;font-size:13px">ROOTFS_POSTPROCESS_COMMAND
            += "install_deb; "</span></div>
        <div><font face="Arial, Helvetica, sans-serif"><br>
          </font></div>
        <div><font face="Arial, Helvetica, sans-serif"><br>
          </font></div>
        <div><font face="Arial, Helvetica, sans-serif"><br clear="all">
          </font>
          <div><br>
          </div>
          -- <br>
          <div class="gmail_signature">
            <div dir="ltr">
              <div>
                <div dir="ltr">
                  <div>
                    <div dir="ltr">
                      <div>
                        <div dir="ltr">
                          <div>
                            <div dir="ltr"><i><b>Att,<br>
                                  Cleiton Bueno</b></i><br>
                              <div><br>
                              </div>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <br>
    </blockquote>
    <br>
  </body>
</html>

--------------000604000701000800070304--
