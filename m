Return-Path: <Qi.Chen@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1165DE009D4; Tue, 22 May 2018 19:39:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7E1EAE00929
	for <yocto@yoctoproject.org>; Tue, 22 May 2018 19:39:24 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com ([147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id w4N2dNKq013869
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Tue, 22 May 2018 19:39:24 -0700 (PDT)
Received: from [128.224.162.218] (128.224.162.218) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.361.1;
	Tue, 22 May 2018 19:39:23 -0700
To: <yocto@yoctoproject.org>
References: <CAG0OLMaBuq05knexO=gnaQnDadhQsHdiZSFiYFRsFu4ZCsDj+Q@mail.gmail.com>
From: ChenQi <Qi.Chen@windriver.com>
Message-ID: <8ef5b821-df26-0c89-60d8-7c55d13d4275@windriver.com>
Date: Wed, 23 May 2018 10:41:35 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.4.0
MIME-Version: 1.0
In-Reply-To: <CAG0OLMaBuq05knexO=gnaQnDadhQsHdiZSFiYFRsFu4ZCsDj+Q@mail.gmail.com>
X-Originating-IP: [128.224.162.218]
Subject: Re: busybox / sysklogd post install conflict
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
X-List-Received-Date: Wed, 23 May 2018 02:39:25 -0000
Content-Type: multipart/alternative;
	boundary="------------0E63F43467C2FB34BBD56AF8"

--------------0E63F43467C2FB34BBD56AF8
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 7bit

Is it because that these two commands are packaged into busybox instead 
of busybox-syslog?
If some layer introduces such change, then a bbappend file in that layer 
needs to be added to also modify sysklogd recipe accordingly.

Anyway, thanks for raising this problem up. When checking the sysklogd 
recipe, I found a typo from my previous patch.
I've sent out patch to fix it.

   git://git.pokylinux.org/poky-contrib ChenQi/sysklogd-typo
   http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=ChenQi/sysklogd-typo



Best Regards,
Chen Qi


On 05/22/2018 11:28 PM, Brian Walsh wrote:
> I have run into an issue building against sumo branch (using opkg if 
> that matters). This patch removed the update-alternatives for sysklogd.
>
> https://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?id=c83eb10f70b714ce3a8c165fad547d800f3ed27d
>
> However, busybox is still configured with syslog support. The script 
> that generates all of the symlinks for busybox runs during the main 
> busybox package post install. This causes the post install to exit 
> with an error since it can't create the links for klogd and syslogd if 
> sysklogd is installed without update alternatives.
>
> From busybox.postinst:
>
> update-alternatives --install /sbin/klogd klogd /bin/busybox.nosuid 50
> update-alternatives --install /sbin/syslogd syslogd /bin/busybox.nosuid 50
>
> I think that patch needs to be reverted. The rconflicts for 
> busybox-syslog and sysklogd takes care of the conflicting config file 
> name that is shared between the two packages but we still need the 
> update-alternatives. Unless the function that generates the busybox 
> symlinks gets smart enough to generate the symlinks only in the 
> busybox-syslog package.
>
>
>


--------------0E63F43467C2FB34BBD56AF8
Content-Type: text/html; charset="windows-1252"
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">Is it because that these two commands
      are packaged into busybox instead of busybox-syslog?<br>
      If some layer introduces such change, then a bbappend file in that
      layer needs to be added to also modify sysklogd recipe
      accordingly.<br>
      <br>
      Anyway, thanks for raising this problem up. When checking the
      sysklogd recipe, I found a typo from my previous patch.<br>
      I've sent out patch to fix it.<br>
      <br>
      <pre wrap="">  git://git.pokylinux.org/poky-contrib ChenQi/sysklogd-typo
  <a class="moz-txt-link-freetext" href="http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=ChenQi/sysklogd-typo">http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=ChenQi/sysklogd-typo</a></pre>
      <br>
      <br>
      Best Regards,<br>
      Chen Qi<br>
      <br>
      <br>
      On 05/22/2018 11:28 PM, Brian Walsh wrote:<br>
    </div>
    <blockquote
cite="mid:CAG0OLMaBuq05knexO=gnaQnDadhQsHdiZSFiYFRsFu4ZCsDj+Q@mail.gmail.com"
      type="cite">
      <meta http-equiv="Content-Type" content="text/html;
        charset=windows-1252">
      <div dir="ltr">I have run into an issue building against sumo
        branch (using opkg if that matters). This patch removed the
        update-alternatives for sysklogd.<br>
        <br>
        <a moz-do-not-send="true"
href="https://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?id=c83eb10f70b714ce3a8c165fad547d800f3ed27d">https://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?id=c83eb10f70b714ce3a8c165fad547d800f3ed27d</a><br>
        <br>
        However, busybox is still configured with syslog support. The
        script that generates all of the symlinks for busybox runs
        during the main busybox package post install. This causes the
        post install to exit with an error since it can't create the
        links for klogd and syslogd if sysklogd is installed without
        update alternatives.<br>
        <br>
        From busybox.postinst:<br>
        <br>
        update-alternatives --install /sbin/klogd klogd
        /bin/busybox.nosuid 50<br>
        update-alternatives --install /sbin/syslogd syslogd
        /bin/busybox.nosuid 50<br>
        <br>
        I think that patch needs to be reverted. The rconflicts for
        busybox-syslog and sysklogd takes care of the conflicting config
        file name that is shared between the two packages but we still
        need the update-alternatives. Unless the function that generates
        the busybox symlinks gets smart enough to generate the symlinks
        only in the busybox-syslog package.<br>
        <div><br>
        </div>
      </div>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <br>
    </blockquote>
    <p><br>
    </p>
  </body>
</html>

--------------0E63F43467C2FB34BBD56AF8--
