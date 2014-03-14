Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B2C0FE00AC7
	for <yocto@yoctoproject.org>; Fri, 14 Mar 2014 02:10:06 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 7ED79F811DC; Fri, 14 Mar 2014 03:10:05 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id 808FCF811DA;
	Fri, 14 Mar 2014 03:10:03 -0600 (MDT)
Message-ID: <5322C771.8070601@mlbassoc.com>
Date: Fri, 14 Mar 2014 03:10:09 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.3.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <CAD78y+7tSFGtRUy89p1Sut+aBuw2Rghmq9uc0y+uySgKXozp1g@mail.gmail.com>	<CAP71Wjxkzj1t=Fq_a1-AJMJcik3jD1P1LrbfPK809QjJtU2aMg@mail.gmail.com>
	<CAD78y+4tJLHEGAd6NZ-S=XU7j_J9=-pFb5vYRxF7gZb52Qkq-Q@mail.gmail.com>
In-Reply-To: <CAD78y+4tJLHEGAd6NZ-S=XU7j_J9=-pFb5vYRxF7gZb52Qkq-Q@mail.gmail.com>
X-Enigmail-Version: 1.5.2
Subject: Re: What is the best practice for customizing libraries included in yocto distribution?
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
X-List-Received-Date: Fri, 14 Mar 2014 09:10:08 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

On 2014-03-14 03:04, Federico Vitali wrote:
> Thank you Nicolas.
> I try to explain better, sorry, yesterday I wrote the email in a hurry.
> 
> I'm working to build an OS based on sato, but I have to modify the code
> of some libraries included in the distribution. When I wrote "customize"
> I meant modify source code.
> 
> I answer to your questions:
> 
> 
>     can you be a bit more specific? not sure i understand completely what
>     you want to do. also how are you getting your distribution? 
>     it's
>     prebuilt and you only have the image or you build it yourself from
>     recipes? 
> 
> 
> I'm basing my distribution on sato-sdk. I've built it from source. I've built and
> installed a cross toolchain and root filesystem to use for building. I'm developing applications
> using the cross toolchain, adt tools and Eclipse. It is all set up properly.
> 
> 
> 
>     telling us more about the trouble might be useful. also telling how
>     you build the toolchain and sysrootfs.
> 
> 
> I have to modify some source code of some gstreamer plugins to support
> some custom functionalities. During the developement I would like to
> work outside bitbake to develop / compile / debug on the target. I know
> that when I've finished I can simply add my patch to a bb append file of
> my own, and when the developement will be finished I will certainly do.
> 
> 
> 
> 
>     well, that would definitely be the more natural way of customizing
>     existing recipes. that's what most people would do in their own
>     layers, generally with .bbappend recipes. it's probably even easier to
>     do that building your own toolchain/SDK to some extends.. why don't
>     you like this option?
> 
> 
> 
> I certainly use this option when I customize existing recipes! My problem
> is in developement phase.
>  
> 
> This is the specific problem I get when I try to build gst-plugins-base:
> 
> ake[4]: ingresso nella directory "/home/vitalife/sources/gst-plugins-base-0.10.36/gst-libs/gst/tag"
>   CC     libgsttag_0.10_la-gstvorbistag.lo
>   CC     libgsttag_0.10_la-gstid3tag.lo
>   CC     libgsttag_0.10_la-gstxmptag.lo
> gstxmptag.c: In function 'xmp_tag_type_get_name':
> gstxmptag.c:178:1: warning: control reaches end of non-void function [-Wreturn-type]
>  }
>  ^
>   CC     libgsttag_0.10_la-gstexiftag.lo
>   CC     libgsttag_0.10_la-lang.lo
>   CC     libgsttag_0.10_la-licenses.lo
>   CC     libgsttag_0.10_la-tags.lo
>   CC     libgsttag_0.10_la-gsttagdemux.lo
>   CC     libgsttag_0.10_la-gsttagmux.lo
>   CC     libgsttag_0.10_la-gsttageditingprivate.lo
>   CC     libgsttag_0.10_la-id3v2.lo
>   CC     libgsttag_0.10_la-id3v2frames.lo
>   CC     libgsttag_0.10_la-xmpwriter.lo
>   CCLD   libgsttag-0.10.la <http://libgsttag-0.10.la>
> libtool: link: warning: library `/opt/poky/1.5.1/sysroots/armv6-vfp-poky-linux-gnueabi/usr/lib/libgstbase-0.10.la <http://libgstbase-0.10.la>' was moved.
> libtool: link: warning: library `/opt/poky/1.5.1/sysroots/armv6-vfp-poky-linux-gnueabi/usr/lib/libgstreamer-0.10.la <http://libgstreamer-0.10.la>' was moved.
> libtool: link: warning: library `/opt/poky/1.5.1/sysroots/armv6-vfp-poky-linux-gnueabi/usr/lib/libgobject-2.0.la <http://libgobject-2.0.la>' was moved.
> libtool: link: warning: library `/opt/poky/1.5.1/sysroots/armv6-vfp-poky-linux-gnueabi/usr/lib/libgmodule-2.0.la <http://libgmodule-2.0.la>' was moved.
> libtool: link: warning: library `/opt/poky/1.5.1/sysroots/armv6-vfp-poky-linux-gnueabi/usr/lib/libgthread-2.0.la <http://libgthread-2.0.la>' was moved.
> libtool: link: warning: library `/opt/poky/1.5.1/sysroots/armv6-vfp-poky-linux-gnueabi/usr/lib/libglib-2.0.la <http://libglib-2.0.la>' was moved.
> libtool: link: warning: library `/opt/poky/1.5.1/sysroots/armv6-vfp-poky-linux-gnueabi/usr/lib/libxml2.la <http://libxml2.la>' was moved.
> sed: can't read /usr/lib/libgstreamer-0.10.la <http://libgstreamer-0.10.la>: No such file or directory
> libtool: link: `=/usr/lib/libgstreamer-0.10.la <http://libgstreamer-0.10.la>' is not a valid libtool archive
> make[4]: *** [libgsttag-0.10.la <http://libgsttag-0.10.la>] Errore 1
> 
> The library configured for cross compilation. I'm starting from the sources patched as in yocto. 
> 
> Any help appreciated!

Why not do these changes/development using your bitbake/Yocto
build environment.  I've found that using quilt makes this quite
easy to do and helps manage the changes, patches, etc.  It will
also avoid the problem you are having which seems to stem from
trying to build outside the original environment.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

