Return-Path: <lars@visionweeding.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1C0A4E00D23; Wed, 26 Oct 2016 06:22:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [195.47.247.221 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mailrelay3.public.one.com (mailrelay3.public.one.com
	[195.47.247.221])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 65E3BE00D0C
	for <yocto@yoctoproject.org>; Wed, 26 Oct 2016 06:22:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
	d=visionweeding.com; s=20140924;
	h=from:subject:date:message-id:to:mime-version:content-type;
	bh=Xngu00Ivm+zonnhDg9spKSb1yKoKkZZec8/kv6m+1Bs=;
	b=aSXpi8VRgDBK0TcgCN91FirMZXeiOC1MWK4kqp0nLoo+WLLRI+CcU05SdcE3wyky/r1BWs2wXyE4h
	Yp2RP/NvMjfAj0crabz/PyQjJlz4a4onTAdmzyk50AbXn+bUzKAW/OkdDlKfcHkMmLexDgxbzKpf6P
	vee3fUf/GZVwv9lk=
X-HalOne-Cookie: c7c475f3a20f7699dd1faf1cc3a9607d263acbd9
X-HalOne-ID: 2fa1cb5a-9b7f-11e6-a591-b8ca3afa9d73
Received: from [192.168.1.194] (unknown [86.58.170.151])
	by smtpfilter1.public.one.com (Halon Mail Gateway) with ESMTPSA
	for <yocto@yoctoproject.org>; Wed, 26 Oct 2016 13:22:04 +0000 (UTC)
To: yocto@yoctoproject.org
From: Lars Larsen <lars@visionweeding.com>
Message-ID: <5810ADFC.2000309@visionweeding.com>
Date: Wed, 26 Oct 2016 15:22:04 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.8.0
MIME-Version: 1.0
Subject: how to add files to boot media hddimg/ISO
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
X-List-Received-Date: Wed, 26 Oct 2016 13:22:11 -0000
Content-Type: multipart/alternative;
	boundary="------------070606030300060805070308"

--------------070606030300060805070308
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

Hello yocto world

I have a recipe that produce an ISO image and a hddimg image.
I need to add a file to the boot media root, alongside rootfs.img and 
intrd  - so it is NOT a part of the rootfs


inspired by bootimg.bbclass, I tried to add the following recipe to my build


/DESCRIPTION = "Provide a sektionnumber.dat file on bootmedia (ISO and 
hdd)"//
//
//LICENSE = "CLOSED"//
//BRANCH ?= "develop"//
//SRC_URI ="file://sektionnumber.dat;"//
//FILESEXTRAPATHS_prepend := "${THISDIR}/files:" //
////
//
//do_bootimg_prepend(){//
//    install -d ${ISODIR}//
//    install -m 0644 "${THISDIR}/files/sektionnumber.dat 
${ISODIR}/sektionnumber.dat//
//      install -d ${HDDDIR}//
//   install -m 0644 "${THISDIR}/files/sektionnumber.dat 
${HDDDIR}/sektionnumber.dat//
//}

/but it is not recognized

any suggestions ?
BR Lars


-- 

Best Regards
Lars Larsen

F.Poulsen Engineering Aps
Tjørnager 16
4330 Hvalsø
Denmark
+45 29802784
www.visionweeding.com


--------------070606030300060805070308
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>

    <meta http-equiv="content-type" content="text/html; charset=utf-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    Hello yocto world<br>
    <br>
    I have a recipe that produce an ISO image and a hddimg image.<br>
    I need to add a file to the boot media root, alongside rootfs.img
    and intrd  - so it is NOT a part of the rootfs<br>
    <br>
    <br>
    inspired by bootimg.bbclass, I tried to add the following recipe to
    my build<br>
    <br>
    <br>
    <i>DESCRIPTION = "Provide a sektionnumber.dat file on bootmedia (ISO
      and hdd)"</i><i><br>
    </i><i><br>
    </i><i>LICENSE = "CLOSED"</i><i><br>
    </i><i>BRANCH ?= "develop"</i><i><br>
    </i><i>SRC_URI =<a class="moz-txt-link-rfc2396E" href="file://sektionnumber.dat;">"file://sektionnumber.dat;"</a></i><i><br>
    </i><i>FILESEXTRAPATHS_prepend := "${THISDIR}/files:" </i><i><br>
    </i><i></i><i><br>
    </i><i><br>
    </i><i>do_bootimg_prepend(){</i><i><br>
    </i><i>    install -d ${ISODIR}</i><i><br>
    </i><i>    install -m 0644 "${THISDIR}/files/sektionnumber.dat
      ${ISODIR}/sektionnumber.dat</i><i><br>
    </i><i>      install -d ${HDDDIR}</i><i><br>
    </i><i>   install -m 0644 "${THISDIR}/files/sektionnumber.dat
      ${HDDDIR}/sektionnumber.dat</i><i><br>
    </i><i>}<br>
      <br>
    </i>but it is not recognized<br>
    <br>
    any suggestions ?<br>
    BR Lars<br>
    <br>
    <br>
    <pre class="moz-signature" cols="72">-- 

Best Regards
Lars Larsen 

F.Poulsen Engineering Aps
Tjørnager 16
4330 Hvalsø
Denmark
+45 29802784
<a class="moz-txt-link-abbreviated" href="http://www.visionweeding.com">www.visionweeding.com</a>

</pre>
  </body>
</html>

--------------070606030300060805070308--
