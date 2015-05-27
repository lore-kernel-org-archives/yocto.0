Return-Path: <ajlennon@dynamicdevices.co.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5CDD1E009D6; Wed, 27 May 2015 11:56:06 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from www.dynamicdevices.co.uk (www.dynamicdevices.co.uk
	[89.200.136.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0DA7DE009D2
	for <yocto@yoctoproject.org>; Wed, 27 May 2015 11:56:03 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by www.dynamicdevices.co.uk (Postfix) with ESMTP id A217927E25D;
	Wed, 27 May 2015 18:56:02 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at lennoab2.miniserver.com
Received: from www.dynamicdevices.co.uk ([127.0.0.1])
	by localhost (www.dynamicdevices.co.uk [127.0.0.1]) (amavisd-new,
	port 10024)
	with ESMTP id 4Js1ljLVHDCn; Wed, 27 May 2015 18:56:01 +0000 (UTC)
Received: from [192.168.1.16] (AMarseille-651-1-226-72.w86-210.abo.wanadoo.fr
	[86.210.105.72])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by www.dynamicdevices.co.uk (Postfix) with ESMTPSA id CAB4227E224;
	Wed, 27 May 2015 18:56:00 +0000 (UTC)
Message-ID: <5566133C.1090306@dynamicdevices.co.uk>
Date: Wed, 27 May 2015 20:55:56 +0200
From: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
User-Agent: Mozilla/5.0 (Windows NT 6.3; WOW64;
	rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: Matthew Karas <mkarascybi@gmail.com>
References: <CADu_VSa5W1E+GCiXgkaXGRoJ7g4kz4WZ7M=GZvbAgL_KCYgodg@mail.gmail.com>
In-Reply-To: <CADu_VSa5W1E+GCiXgkaXGRoJ7g4kz4WZ7M=GZvbAgL_KCYgodg@mail.gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Start openvpn with my own config at startup
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
X-List-Received-Date: Wed, 27 May 2015 18:56:06 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit

Hi Matthew,

On 27/05/2015 20:07, Matthew Karas wrote:
> I have an ovpn file I'd like my system to start up with.  I was able
> to install the openvpn file into /etc/openvpn using a bbappends file -
> but the system doesn't start openvpn like the openvpn docs describes.
>
> How do I set up openvpn to launch with my config file at start up?
>
> Thanks

We're using OpenVPN here too. I put a .bbappend together along these
lines which does the job for me. I think you may be needing the
update-rc.d incantations which are documented here

http://www.yoctoproject.org/docs/current/ref-manual/ref-manual.html#ref-classes-update-rc.d

e.g.

FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-${PV}:"

SRC_URI += "file://openvpn.conf \
           "

do_install_append() {
  install -d ${D}${sysconfdir}/openvpn
  install -m 644 ${WORKDIR}/openvpn.conf
${D}${sysconfdir}/openvpn/openvpn.conf
}

inherit update-rc.d

INITSCRIPT_NAME = "${PN}"
INITSCRIPT_PACKAGES = "${PN}"
INITSCRIPT_PARAMS = "start 90 5 2 . stop 30 0 1 6 ."

...

fwiw we've found that across multiple channels (wired, wireless 802.11,
cellular) we need something more than this and so have started looking
at connman + ofono to provide connection management. NB connman supports
OpenVPN.

Hope that helps,

Alex



