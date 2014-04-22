Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A7CA9E00C6B
	for <yocto@yoctoproject.org>; Tue, 22 Apr 2014 07:42:02 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id AC034F811E5; Tue, 22 Apr 2014 08:42:01 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id A692EF811D8;
	Tue, 22 Apr 2014 08:41:56 -0600 (MDT)
Message-ID: <53567FB5.5080807@mlbassoc.com>
Date: Tue, 22 Apr 2014 08:41:57 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.4.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <lj57d5$6ao$1@ger.gmane.org> <1398156153.16672.28.camel@ted>
	<lj5oue$t5b$1@ger.gmane.org>
In-Reply-To: <lj5oue$t5b$1@ger.gmane.org>
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
X-List-Received-Date: Tue, 22 Apr 2014 14:42:07 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 2014-04-22 06:56, Neuer User wrote:
> Am 22.04.2014 10:42, schrieb Richard Purdie:
>>
>> Basically, you need to pass in the correct compiler and linker flags.
>>
>> http://gstreamer.freedesktop.org/data/doc/gstreamer/head/faq/html/chapter-developing.html
>>
>> Adding:
>>
>> `pkg-config --cflags --libs gstreamer`
>>
>> to your compiler line will probably help. The system will automatically
>> figure out things from there, the environment contains things that
>> pkg-config can use to generate the correct options.
>>
>> Cheers,
>>
>> Richard
>>
>
> Thanks, that helped, but I'm still not through, I'm afraid.
>
> My recipe look like this now:
>
>
> DESCRIPTION = "Simple helloworld application"
> SECTION = "multimedia"
> LICENSE = "MIT"
> LIC_FILES_CHKSUM =
> "file://${COMMON_LICENSE_DIR}/MIT;md5=0835ade698e0bcf8506ecda2f7b4f302"
> PR = "r0"
>
> SRC_URI = "file://cameraserver.c"
>
> DEPENDS = "gst-rtsp gstreamer"

Try adding gst-plugins-good to DEPENDS - that's where the rtsp stuff lives.

>
> S = "${WORKDIR}"
>
> do_compile() {
>               ${CC} `pkg-config --cflags --libs gstreamer-0.10`
> cameraserver.c -o cameraserver
> }
>
> do_install() {
>               install -d ${D}${bindir}
>               install -m 0755 cameraserver ${D}${bindir}
> }
>
> It only worked with "gstreamer-0.10". Now the compilation works, but
> linking stops:
>
> Log data follows:
> | DEBUG: Executing shell function do_compile
> | /tmp/cckmN8NC.o: In function `main':
> | cameraserver.c:(.text+0x70): undefined reference to `gst_rtsp_server_new'
> | cameraserver.c:(.text+0x7c): undefined reference to
> `gst_rtsp_server_get_media_mapping'
> | cameraserver.c:(.text+0x84): undefined reference to
> `gst_rtsp_media_factory_new'
> | cameraserver.c:(.text+0xa0): undefined reference to
> `gst_rtsp_media_factory_set_launch'
> | cameraserver.c:(.text+0xb4): undefined reference to
> `gst_rtsp_media_mapping_add_factory'
> | cameraserver.c:(.text+0xc8): undefined reference to
> `gst_rtsp_server_attach'
> | collect2: error: ld returned 1 exit status
>
> As it seems only linking to gst-rtsp, not to gstreamer, if I see that
> correctly.
>
> I then tried to add "gst-rtsp" or "gst-rtsp-server" or "gst-rtsp-0.10"
> or "gst-rtsp-server-0.10" to the pkg-config part, but none of them were
> found.
>
> I tell you, I feel extremely stupid. The solution is probably so simple,
> yet I do not find a solution (even with using Google).
>
>

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

