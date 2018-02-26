Return-Path: <j_r.cash@yahoo.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D7D14E00F45; Sun, 25 Feb 2018 22:20:23 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (j_r.cash[at]yahoo.de)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [77.238.179.146 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from sonic304-21.consmr.mail.ir2.yahoo.com
	(sonic304-21.consmr.mail.ir2.yahoo.com [77.238.179.146])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0577AE00843
	for <yocto@yoctoproject.org>; Sun, 25 Feb 2018 22:20:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.de; s=s2048;
	t=1519626020; bh=vE61eiMMu/d0bz+/jNZvX24Rm61gqD6PRjnf2bFQeMU=;
	h=Subject:To:References:From:Date:In-Reply-To:From:Subject;
	b=abFH1MsQMSgqg+YrfL5YoNDW2nrsteUt/Vl5VTk9Ej8uvlQSG8r0WII/wyLcl2RDXyzo85kfouPkMjWkXNUn0hHMBAGL04N3J65Wp4NMXaAmFbJkyQtR8TpR5CvHDIIMQWy8zW3WWJ+qUx4C+VEyQsstqH6ivVE8rBShzS49n3H2KlwVUTVLwHSfGjn/7l6YktSkGb0qRYnnCnD2BQuzTJ96JswwCvUHOoKWNflQFB06e9RWQLeiEbuRE3Uv3OPtafB4kDQKjTGIMirROA7EPewQA3G19TzNdFsob32LRQL0inRyeRIaQIbHbNXvxPCIK8bVyJheXmehywCEEKZv7w==
X-YMail-OSG: lJBCT_0VM1mltWk3FnO2JhOrS20cirQHbGcZH4WvW_6o9Knpgb9yXvOFGQVUOWt
	Luauxu9BO5rDMwWt8Oiso9IcCEmVxkhmdI5SjvKjE_ZL70qEoemq901XjdhHNy7KdCKV.i9DmY9P
	XVj08VlCB9bT0N31cqIOPZWzSVw.5d_Y0ZmXbpSL2hSD4dirJAq8npbD5n.K76HsuIewO73HinSI
	f6EvnOaGjQManxZlZrXj2xlD8lo1K.Qf3YuuDtVHXd5kJemn3ciRmN5Ikeo2Fbpj.ags2FUuhAEl
	Bl6Nbh_xuAOIzh86VgnwXLxo633g7Gy8h2QQQDLG9yCwc6vo_7tVu7pGGMxsj7VQ6AGApuilTyKQ
	Ad0O81Z.iKKtTQK082Kpw3.zQfW9EI3HNZe1zGZIv4lW5S1nNVSF_N5wqYmXk79PPs7YMNvm56ps
	mR5XwXGUOoj.TEstq8y.0jFnEoQlFtpce2xd8rWudVH2OPnlOG.nz5dL.y1Hv3GqtYeh.QMfK.Wb
	Z.2sMGlWPI0N.ntOcDP148U8o.qP7XqC3KwXDB7YezlVna6Ua
Received: from sonic.gate.mail.ne1.yahoo.com by
	sonic304.consmr.mail.ir2.yahoo.com with HTTP;
	Mon, 26 Feb 2018 06:20:20 +0000
Received: from smtp156.mail.ir2.yahoo.com (EHLO [172.16.11.51])
	([46.228.39.119])
	by smtp414.mail.ir2.yahoo.com (JAMES SMTP Server ) with ESMTPA ID
	acec066d98af681db97622d6f2875aa6 for <yocto@yoctoproject.org>;
	Mon, 26 Feb 2018 06:20:17 +0000 (UTC)
To: yocto@yoctoproject.org
References: <4225ccb9.2bcb.161cd3007f8.Coremail.qinlaigui@126.com>
From: Johnny R Cash <j_r.cash@yahoo.de>
Message-ID: <798b595e-d2d2-ac15-84c9-1c21d2050ceb@yahoo.de>
Date: Mon, 26 Feb 2018 07:20:15 +0100
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:52.0) Gecko/20100101
	Thunderbird/52.6.0
MIME-Version: 1.0
In-Reply-To: <4225ccb9.2bcb.161cd3007f8.Coremail.qinlaigui@126.com>
Subject: Re: [Meta-Raspberrypi] Yocto apt sources.list for Raspberry Pi
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
X-List-Received-Date: Mon, 26 Feb 2018 06:20:23 -0000
Content-Type: multipart/alternative;
	boundary="------------27BA503E485FB9560D3D0F1D"
Content-Language: en-US

--------------27BA503E485FB9560D3D0F1D
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

Greetings.
If i understand you correctly you configured your Yocto/Poky OS to try 
to fetch updates from Raspbian OS.
You would need to configure Yocto/Poky to update from a Yocto/Poky 
repository. As with using Yocto you probably are defining your own, that 
would have to be your own repository URL.
BR

On 25.02.2018 14:38, Laigui Qin wrote:
> Hi Everyone,
>
> I am building the GNU Linux with Yocto for Raspberry Pi using 
> meta-raspberrypi. Everything is good (with help of google search and 
> yocto manual) until I added apt support to the image. As I am a little 
> confused which Repository URL I should put in the sources.list, I 
> tried the Raspbian repository. However, when I do apt-get upgrade I 
> got following error which is not expected. Any idea on this effort?
>
> BR,
> Mike
>
> root@raspberrypi-cm3:~# sudo apt-get upgrade
> Reading package lists... Done
> Building dependency tree
> Reading state information... Done
> Calculating upgrade... Done
> The following packages have been kept back:
>   base-files cpp diffutils g++ gcc git initscripts libcap2 libgcc1 
> libgmp10 libsysfs2 libusb-1.0-0 libwbclient0 netcat ntp procps 
> samba-common usbutils
> The following packages will be upgraded:
>   busybox ethtool sysfsutils
> 3 upgraded, 0 newly installed, 0 to remove and 18 not upgraded.
> Need to get 562 kB of archives.
> After this operation, 1114 kB of additional disk space will be used.
> Do you want to continue? [Y/n]
> Get:1http://archive.raspbian.org/raspbianwheezy/main armhf busybox 
> armhf 1:1.20.0-7 [438 kB]
> Get:2http://archive.raspbian.org/raspbianwheezy/main armhf ethtool 
> armhf 1:3.4.2-1 [98.7 kB]
> Get:3http://archive.raspbian.org/raspbianwheezy/main armhf sysfsutils 
> armhf 2.1.0+repack-2 [24.5 kB]
> Fetched 562 kB in 5s (96.0 kB/s)
> (Reading database ... 16225 files and directories currently installed.)
> Preparing to unpack .../busybox_1%3a1.20.0-7_armhf.deb ...
> Unpacking busybox (1:1.20.0-7) over (1.24.1-r0) ...
> dpkg-deb (subprocess): unable to execute tar (tar): No such file or 
> directory
> *dpkg-deb:**error:*subprocess tar returned error exit status 2
> *dpkg:*error processing archive 
> /var/cache/apt/archives/ethtool_1%3a3.4.2-1_armhf.deb (--unpack):
>  subprocess dpkg-deb --control returned error exit status 2
> dpkg-deb (subprocess): unable to execute tar (tar): No such file or 
> directory
> *dpkg-deb:**error:*subprocess tar returned error exit status 2
> *dpkg:*error processing archive 
> /var/cache/apt/archives/sysfsutils_2.1.0+repack-2_armhf.deb (--unpack):
>  subprocess dpkg-deb --control returned error exit status 2
> Errors were encountered while processing:
>  /var/cache/apt/archives/ethtool_1%3a3.4.2-1_armhf.deb
>  /var/cache/apt/archives/sysfsutils_2.1.0+repack-2_armhf.deb
> E: Sub-process /usr/bin/dpkg returned an error code (1)
>
>
>
>


--------------27BA503E485FB9560D3D0F1D
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <div class="moz-cite-prefix">Greetings.<br>
      If i understand you correctly you configured your Yocto/Poky OS to
      try to fetch updates from Raspbian OS.<br>
      You would need to configure Yocto/Poky to update from a Yocto/Poky
      repository. As with using Yocto you probably are defining your
      own, that would have to be your own repository URL.<br>
      BR<br>
      <br>
      On 25.02.2018 14:38, Laigui Qin wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:4225ccb9.2bcb.161cd3007f8.Coremail.qinlaigui@126.com">
      <div
        style="line-height:1.7;color:#000000;font-size:14px;font-family:Arial"><span
          style="font-family: Helvetica; font-size: 12px;
          text-size-adjust: auto;">Hi Everyone,</span>
        <div class="" style="font-family: Helvetica; font-size: 12px;
          text-size-adjust: auto;"><br class="">
        </div>
        <div class="" style="font-family: Helvetica; font-size: 12px;
          text-size-adjust: auto;">I am building the GNU Linux with
          Yocto for Raspberry Pi using meta-raspberrypi. Everything is
          good (with help of google search and yocto manual) until I
          added apt support to the image. As I am a little confused
          which Repository URL I should put in the sources.list, I tried
          the Raspbian repository. However, when I do apt-get upgrade I
          got following error which is not expected. Any idea on this
          effort?</div>
        <div class="" style="font-family: Helvetica; font-size: 12px;
          text-size-adjust: auto;"><br class="">
        </div>
        <div class="" style="font-family: Helvetica; font-size: 12px;
          text-size-adjust: auto;">BR,</div>
        <div class="" style="font-family: Helvetica; font-size: 12px;
          text-size-adjust: auto;">Mike</div>
        <div class="" style="font-family: Helvetica; font-size: 12px;
          text-size-adjust: auto;"><br class="">
        </div>
        <div class="" style="font-family: Helvetica; font-size: 12px;
          text-size-adjust: auto;">
          <div class="" style="margin: 0px; font-stretch: normal;
            font-size: 14px; line-height: normal; font-family: Menlo;"><span
              class="" style="font-variant-ligatures:
              no-common-ligatures;">root@raspberrypi-cm3:~# sudo apt-get
              upgrade</span></div>
          <div class="" style="margin: 0px; font-stretch: normal;
            font-size: 14px; line-height: normal; font-family: Menlo;"><span
              class="" style="font-variant-ligatures:
              no-common-ligatures;">Reading package lists... Done</span></div>
          <div class="" style="margin: 0px; font-stretch: normal;
            font-size: 14px; line-height: normal; font-family: Menlo;"><span
              class="" style="font-variant-ligatures:
              no-common-ligatures;">Building dependency tree       </span></div>
          <div class="" style="margin: 0px; font-stretch: normal;
            font-size: 14px; line-height: normal; font-family: Menlo;"><span
              class="" style="font-variant-ligatures:
              no-common-ligatures;">Reading state information... Done</span></div>
          <div class="" style="margin: 0px; font-stretch: normal;
            font-size: 14px; line-height: normal; font-family: Menlo;"><span
              class="" style="font-variant-ligatures:
              no-common-ligatures;">Calculating upgrade... Done</span></div>
          <div class="" style="margin: 0px; font-stretch: normal;
            font-size: 14px; line-height: normal; font-family: Menlo;"><span
              class="" style="font-variant-ligatures:
              no-common-ligatures;">The following packages have been
              kept back:</span></div>
          <div class="" style="margin: 0px; font-stretch: normal;
            font-size: 14px; line-height: normal; font-family: Menlo;"><span
              class="" style="font-variant-ligatures:
              no-common-ligatures;">  base-files cpp diffutils g++ gcc
              git initscripts libcap2 libgcc1 libgmp10 libsysfs2
              libusb-1.0-0 libwbclient0 netcat ntp procps samba-common
              usbutils</span></div>
          <div class="" style="margin: 0px; font-stretch: normal;
            font-size: 14px; line-height: normal; font-family: Menlo;"><span
              class="" style="font-variant-ligatures:
              no-common-ligatures;">The following packages will be
              upgraded:</span></div>
          <div class="" style="margin: 0px; font-stretch: normal;
            font-size: 14px; line-height: normal; font-family: Menlo;"><span
              class="" style="font-variant-ligatures:
              no-common-ligatures;">  busybox ethtool sysfsutils</span></div>
          <div class="" style="margin: 0px; font-stretch: normal;
            font-size: 14px; line-height: normal; font-family: Menlo;"><span
              class="" style="font-variant-ligatures:
              no-common-ligatures;">3 upgraded, 0 newly installed, 0 to
              remove and 18 not upgraded.</span></div>
          <div class="" style="margin: 0px; font-stretch: normal;
            font-size: 14px; line-height: normal; font-family: Menlo;"><span
              class="" style="font-variant-ligatures:
              no-common-ligatures;">Need to get 562 kB of archives.</span></div>
          <div class="" style="margin: 0px; font-stretch: normal;
            font-size: 14px; line-height: normal; font-family: Menlo;"><span
              class="" style="font-variant-ligatures:
              no-common-ligatures;">After this operation, 1114 kB of
              additional disk space will be used.</span></div>
          <div class="" style="margin: 0px; font-stretch: normal;
            font-size: 14px; line-height: normal; font-family: Menlo;"><span
              class="" style="font-variant-ligatures:
              no-common-ligatures;">Do you want to continue? [Y/n] </span></div>
          <div class="" style="margin: 0px; font-stretch: normal;
            font-size: 14px; line-height: normal; font-family: Menlo;"><span
              class="" style="font-variant-ligatures:
              no-common-ligatures;">Get:1<span
                class="Apple-converted-space"> </span><a
                href="http://archive.raspbian.org/raspbian" class=""
                moz-do-not-send="true">http://archive.raspbian.org/raspbian</a><span
                class="Apple-converted-space"> </span>wheezy/main armhf
              busybox armhf 1:1.20.0-7 [438 kB]</span></div>
          <div class="" style="margin: 0px; font-stretch: normal;
            font-size: 14px; line-height: normal; font-family: Menlo;"><span
              class="" style="font-variant-ligatures:
              no-common-ligatures;">Get:2<span
                class="Apple-converted-space"> </span><a
                href="http://archive.raspbian.org/raspbian" class=""
                moz-do-not-send="true">http://archive.raspbian.org/raspbian</a><span
                class="Apple-converted-space"> </span>wheezy/main armhf
              ethtool armhf 1:3.4.2-1 [98.7 kB]</span></div>
          <div class="" style="margin: 0px; font-stretch: normal;
            font-size: 14px; line-height: normal; font-family: Menlo;"><span
              class="" style="font-variant-ligatures:
              no-common-ligatures;">Get:3<span
                class="Apple-converted-space"> </span><a
                href="http://archive.raspbian.org/raspbian" class=""
                moz-do-not-send="true">http://archive.raspbian.org/raspbian</a><span
                class="Apple-converted-space"> </span>wheezy/main armhf
              sysfsutils armhf 2.1.0+repack-2 [24.5 kB]</span></div>
          <div class="" style="margin: 0px; font-stretch: normal;
            font-size: 14px; line-height: normal; font-family: Menlo;"><span
              class="" style="font-variant-ligatures:
              no-common-ligatures;">Fetched 562 kB in 5s (96.0 kB/s)   
                 </span></div>
          <div class="" style="margin: 0px; font-stretch: normal;
            font-size: 14px; line-height: normal; font-family: Menlo;"><span
              class="" style="font-variant-ligatures:
              no-common-ligatures;">(Reading database ... 16225 files
              and directories currently installed.)</span></div>
          <div class="" style="margin: 0px; font-stretch: normal;
            font-size: 14px; line-height: normal; font-family: Menlo;"><span
              class="" style="font-variant-ligatures:
              no-common-ligatures;">Preparing to unpack
              .../busybox_1%3a1.20.0-7_armhf.deb ...</span></div>
          <div class="" style="margin: 0px; font-stretch: normal;
            font-size: 14px; line-height: normal; font-family: Menlo;"><span
              class="" style="font-variant-ligatures:
              no-common-ligatures;">Unpacking busybox (1:1.20.0-7) over
              (1.24.1-r0) ...</span></div>
          <div class="" style="margin: 0px; font-stretch: normal;
            font-size: 14px; line-height: normal; font-family: Menlo;"><span
              class="" style="font-variant-ligatures:
              no-common-ligatures;">dpkg-deb (subprocess): unable to
              execute tar (tar): No such file or directory</span></div>
          <div class="" style="margin: 0px; font-stretch: normal;
            font-size: 14px; line-height: normal; font-family: Menlo;"><span
              class="" style="font-variant-ligatures:
              no-common-ligatures;"><b class="">dpkg-deb:</b><span
                class="Apple-converted-space"> </span></span><span
              class="" style="font-variant-ligatures:
              no-common-ligatures; color: rgb(195, 55, 32);"><b class="">error:</b></span><span
              class="" style="font-variant-ligatures:
              no-common-ligatures;"><span class="Apple-converted-space"> </span>subprocess
              tar returned error exit status 2</span></div>
          <div class="" style="margin: 0px; font-stretch: normal;
            font-size: 14px; line-height: normal; font-family: Menlo;"><span
              class="" style="font-variant-ligatures:
              no-common-ligatures;"><b class="">dpkg:</b><span
                class="Apple-converted-space"> </span>error processing
              archive
              /var/cache/apt/archives/ethtool_1%3a3.4.2-1_armhf.deb
              (--unpack):</span></div>
          <div class="" style="margin: 0px; font-stretch: normal;
            font-size: 14px; line-height: normal; font-family: Menlo;"><span
              class="" style="font-variant-ligatures:
              no-common-ligatures;"> subprocess dpkg-deb --control
              returned error exit status 2</span></div>
          <div class="" style="margin: 0px; font-stretch: normal;
            font-size: 14px; line-height: normal; font-family: Menlo;"><span
              class="" style="font-variant-ligatures:
              no-common-ligatures;">dpkg-deb (subprocess): unable to
              execute tar (tar): No such file or directory</span></div>
          <div class="" style="margin: 0px; font-stretch: normal;
            font-size: 14px; line-height: normal; font-family: Menlo;"><span
              class="" style="font-variant-ligatures:
              no-common-ligatures;"><b class="">dpkg-deb:</b><span
                class="Apple-converted-space"> </span></span><span
              class="" style="font-variant-ligatures:
              no-common-ligatures; color: rgb(195, 55, 32);"><b class="">error:</b></span><span
              class="" style="font-variant-ligatures:
              no-common-ligatures;"><span class="Apple-converted-space"> </span>subprocess
              tar returned error exit status 2</span></div>
          <div class="" style="margin: 0px; font-stretch: normal;
            font-size: 14px; line-height: normal; font-family: Menlo;"><span
              class="" style="font-variant-ligatures:
              no-common-ligatures;"><b class="">dpkg:</b><span
                class="Apple-converted-space"> </span>error processing
              archive
              /var/cache/apt/archives/sysfsutils_2.1.0+repack-2_armhf.deb
              (--unpack):</span></div>
          <div class="" style="margin: 0px; font-stretch: normal;
            font-size: 14px; line-height: normal; font-family: Menlo;"><span
              class="" style="font-variant-ligatures:
              no-common-ligatures;"> subprocess dpkg-deb --control
              returned error exit status 2</span></div>
          <div class="" style="margin: 0px; font-stretch: normal;
            font-size: 14px; line-height: normal; font-family: Menlo;"><span
              class="" style="font-variant-ligatures:
              no-common-ligatures;">Errors were encountered while
              processing:</span></div>
          <div class="" style="margin: 0px; font-stretch: normal;
            font-size: 14px; line-height: normal; font-family: Menlo;"><span
              class="" style="font-variant-ligatures:
              no-common-ligatures;"> /var/cache/apt/archives/ethtool_1%3a3.4.2-1_armhf.deb</span></div>
          <div class="" style="margin: 0px; font-stretch: normal;
            font-size: 14px; line-height: normal; font-family: Menlo;"><span
              class="" style="font-variant-ligatures:
              no-common-ligatures;"> /var/cache/apt/archives/sysfsutils_2.1.0+repack-2_armhf.deb</span></div>
          <div class="" style="margin: 0px; font-stretch: normal;
            font-size: 14px; line-height: normal; font-family: Menlo;"><span
              class="" style="font-variant-ligatures:
              no-common-ligatures;">E: Sub-process /usr/bin/dpkg
              returned an error code (1)</span></div>
        </div>
      </div>
      <br>
      <br>
      <span title="neteasefooter">
        <p> </p>
      </span><br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <br>
    </blockquote>
    <p><br>
    </p>
  </body>
</html>

--------------27BA503E485FB9560D3D0F1D--
