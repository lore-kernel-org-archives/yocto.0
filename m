Return-Path: <gley-yocto@m.gmane.org>
Received: from plane.gmane.org (plane.gmane.org [80.91.229.3])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 704EEE00C61
	for <yocto@yoctoproject.org>; Tue, 22 Apr 2014 05:56:59 -0700 (PDT)
Received: from list by plane.gmane.org with local (Exim 4.69)
	(envelope-from <gley-yocto@m.gmane.org>) id 1WcaFs-000798-ED
	for yocto@yoctoproject.org; Tue, 22 Apr 2014 14:56:56 +0200
Received: from 80-218-32-173.dclient.hispeed.ch ([80.218.32.173])
	by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Tue, 22 Apr 2014 14:56:56 +0200
Received: from auslands-kv by 80-218-32-173.dclient.hispeed.ch with local
	(Gmexim 0.1 (Debian)) id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Tue, 22 Apr 2014 14:56:56 +0200
X-Injected-Via-Gmane: http://gmane.org/
To: yocto@yoctoproject.org
From: Neuer User <auslands-kv@gmx.de>
Date: Tue, 22 Apr 2014 14:56:45 +0200
Message-ID: <lj5oue$t5b$1@ger.gmane.org>
References: <lj57d5$6ao$1@ger.gmane.org> <1398156153.16672.28.camel@ted>
Mime-Version: 1.0
X-Complaints-To: usenet@ger.gmane.org
X-Gmane-NNTP-Posting-Host: 80-218-32-173.dclient.hispeed.ch
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.4.0
In-Reply-To: <1398156153.16672.28.camel@ted>
Subject: Re: Newbie question: How to get dependencies into compile of custom recipe?
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
X-List-Received-Date: Tue, 22 Apr 2014 12:57:00 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

Am 22.04.2014 10:42, schrieb Richard Purdie:
> 
> Basically, you need to pass in the correct compiler and linker flags.
> 
> http://gstreamer.freedesktop.org/data/doc/gstreamer/head/faq/html/chapter-developing.html
> 
> Adding:
> 
> `pkg-config --cflags --libs gstreamer`
> 
> to your compiler line will probably help. The system will automatically
> figure out things from there, the environment contains things that
> pkg-config can use to generate the correct options.
> 
> Cheers,
> 
> Richard
> 

Thanks, that helped, but I'm still not through, I'm afraid.

My recipe look like this now:


DESCRIPTION = "Simple helloworld application"
SECTION = "multimedia"
LICENSE = "MIT"
LIC_FILES_CHKSUM =
"file://${COMMON_LICENSE_DIR}/MIT;md5=0835ade698e0bcf8506ecda2f7b4f302"
PR = "r0"

SRC_URI = "file://cameraserver.c"

DEPENDS = "gst-rtsp gstreamer"

S = "${WORKDIR}"

do_compile() {
             ${CC} `pkg-config --cflags --libs gstreamer-0.10`
cameraserver.c -o cameraserver
}

do_install() {
             install -d ${D}${bindir}
             install -m 0755 cameraserver ${D}${bindir}
}

It only worked with "gstreamer-0.10". Now the compilation works, but
linking stops:

Log data follows:
| DEBUG: Executing shell function do_compile
| /tmp/cckmN8NC.o: In function `main':
| cameraserver.c:(.text+0x70): undefined reference to `gst_rtsp_server_new'
| cameraserver.c:(.text+0x7c): undefined reference to
`gst_rtsp_server_get_media_mapping'
| cameraserver.c:(.text+0x84): undefined reference to
`gst_rtsp_media_factory_new'
| cameraserver.c:(.text+0xa0): undefined reference to
`gst_rtsp_media_factory_set_launch'
| cameraserver.c:(.text+0xb4): undefined reference to
`gst_rtsp_media_mapping_add_factory'
| cameraserver.c:(.text+0xc8): undefined reference to
`gst_rtsp_server_attach'
| collect2: error: ld returned 1 exit status

As it seems only linking to gst-rtsp, not to gstreamer, if I see that
correctly.

I then tried to add "gst-rtsp" or "gst-rtsp-server" or "gst-rtsp-0.10"
or "gst-rtsp-server-0.10" to the pkg-config part, but none of them were
found.

I tell you, I feel extremely stupid. The solution is probably so simple,
yet I do not find a solution (even with using Google).



