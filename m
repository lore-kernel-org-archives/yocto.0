Return-Path: <anders@chargestorm.se>
Received: from STOEXHUB01.domain01.net (STOEXHUB01.domain01.net
	[83.145.59.142])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D086BE01611
	for <yocto@yoctoproject.org>; Tue,  1 Oct 2013 07:30:55 -0700 (PDT)
Received: from [192.168.0.100] (37.250.222.0) by STOEXHUB01.domain01.net
	(10.12.10.1) with Microsoft SMTP Server (TLS) id 8.3.279.1;
	Tue, 1 Oct 2013 16:30:51 +0200
User-Agent: K-9 Mail for Android
In-Reply-To: <CABHD4K8nFzX1g5S3=Jyv1KsKBVgBjias6D1nd6m87qx0EJSSCQ@mail.gmail.com>
References: <CABHD4K-2dfbGYj6p13C=uYXS4pzLGQ+NZaV_PkqahKu_zknJjg@mail.gmail.com>
	<CABHD4K-1p9Va1_+xjtLsiKkMX8ak1hUvZikNFMnU7BZsZ49WEg@mail.gmail.com>
	<20131001132628.GB6493@ad.chargestorm.se>
	<CABHD4K-4Y3EwtJrVpqWp-Y_GxBHXCvhqBNYrLeBEf==eT0ge=w@mail.gmail.com>
	<6d6111d1-28f2-40d5-a55c-ae04ab2911b4@email.android.com>
	<CABHD4K8nFzX1g5S3=Jyv1KsKBVgBjias6D1nd6m87qx0EJSSCQ@mail.gmail.com>
MIME-Version: 1.0
From: Anders Darander <anders@chargestorm.se>
Date: Tue, 1 Oct 2013 16:30:48 +0200
To: Amit Tomer <amittomer25@gmail.com>
Message-ID: <76fb11df-99fe-4989-afd5-57a4bbf01356@email.android.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Provide sftp-client support in yocto
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
X-List-Received-Date: Tue, 01 Oct 2013 14:30:56 -0000
Content-Transfer-Encoding: 8bit
Content-Type: text/plain; charset="UTF-8"



Amit Tomer <amittomer25@gmail.com> wrote:
>Yes Anders, I can see openssh-sftp folder inside 
>"tmp/work/fkm-poky-linux-gnueabi/openssh/6.1p1-r3/packages-split".But
>its empty one.

Ok, then the sftp binary should have been packaged into openssh-sftp. The question is then why your package is being empty. 

You said that the sftp binary was available in tmp/work/fkm-poky-linux-gnueabi/openssh/6.1p1-r3/package/usr/bin, cab you so find out there? 

Do you get any clue from the packaging log as to why openssh-sftp is empty? 

If you run 'bitbake openssh -e' and search for FILES_openssh-sftp, what does it tell you? 

In which directory under packages-split can you find sftp? 

>
>DISTRO            = "poky"
>
>DISTRO_VERSION    = "1.4.2"

It should work. 

Unless there something that overrides the packaging (and splitting) step in any other layer you might have configured. 

I won't be able to run any tests on my own until early next week. If necessary, I hope that someone else might be able to help you until then. 

Cheers, 
Anders 

>
>This is taken from build confriguation.
>
>
>Thanks 
>
>Amit.
>
>
>
>On Tue, Oct 1, 2013 at 7:37 PM, Anders Darander <anders@chargestorm.se>
>wrote:
>
>
>
>Amit Tomer <amittomer25@gmail.com> wrote:
>>Thansk Anders for your kind response
>>
>>
>>Yes we are created our image and can see there are some IMAGE_INSTALL
>>already used
>
>Good.
>
>
>>But when I add  IMAGE_INSTALL += "openssh-sftp"
>>
>>
>>Getting below error
>>
>>
>>Error: openssh-sftp not found in the base feeds (zzz_pyp_ii
>>cortexa15hf-vfp-neon cortexa15hf-vfp armv7ahf-vfp-neon armv7ahf-vfp
>>armv6hf-vfp armv5ehf-vfp armv5hf-vfp noarch any all).
>>
>>
>>Do we need to do something more here
>
>That should have been enough.
>
>If you look in
>tmp/work/fkm-poky-linux-gnueabi/openssh/6.1p1-r3/packages-split, do you
>see openssh-sftp there, or which packages do you have there?
>
>Which version of Yocto / Poky are you using? What layers do you have
>enabled?
>
>Cheers,
>Anders
>
>
>>Thanks
>>
>>Amit
>>
>>
>>
>>
>>
>>On Tue, Oct 1, 2013 at 6:56 PM, Anders Darander
><anders@chargestorm.se>
>>wrote:
>>
>>* Amit Tomer <amittomer25@gmail.com> [131001 14:57]:
>>
>>> Just now I have seen your responses ,didn't get any notification of
>>your
>>> responses on my mail-id.
>>
>>> Let me present my problem again to you guys.
>>
>>> We have stfp-server running fine on put target machine and is
>running
>>as part
>>> of sshd daemon.
>>
>>Ok, that sounds good. Then the server is apparantly no problem for
>you.
>>
>>
>>> But when we try to connect to other machine from target board, sftp
>>is not
>>> working becaue our borad is set to run as sftp -client.
>>
>>> An SFTP client program called sftp is already insatlled to tmp/work/
>>> fkm-poky-linux-gnueabi/openssh/6.1p1-r3/package/usr/bin.
>>
>>The build process built sftp (the client) as a part of building
>>openssh.
>>The client was packaged into a separate package, called openssh-sftp.
>>
>>
>>> But on Target I could not find this sftp .bins.
>>
>>Now you need to install that package, openssh-sftp, to your image.
>>
>>If you have created your own image, just add openssh-sftp to
>>IMAGE_INSTALL.
>>
>>If you're not creating your own images, I'd strongly suggest that you
>>do
>>that. (It'll make all your customizations a lot easier in the end).
>See
>>http://www.yoctoproject.org/docs/current/dev-manual/dev-manual.html#usingpoky-extend-customimage-custombb
>>for more information.
>>
>>I hope this answers your question.
>>
>>Cheers,
>>Anders
>>
>>
>>> Now we want this stfp run as some daemon or part of sshd daemon
>>itself.
>>
>>> Anders: It's already being installed to a package named openssh-sftp
>>
>>> We don't have package named openssh-sftp ,we have package named with
>>openssh
>>> only
>>
>>> Thanks
>>> Amit
>>
>>
>>
>>
>>
>>
>>
>>> On Tue, Oct 1, 2013 at 1:22 PM, Amit Tomer <amittomer25@gmail.com>
>>wrote:
>>
>>>     I am new to OpenEmbedded Yocto project and have a requirement to
>>provide
>>>     sftp-client support on my target board.
>>
>>>     Sftp-server bins are already packed into final image and is
>>installed at
>>
>>>
>>tmp/work/fkm-poky-linux-gnueabi/openssh/6.1p1-r3/package/usr/lib/openssh/
>>>     sftp-server
>>
>>>     Now ,same way Do I have to install stfp client bins also or is
>>there any
>>>     other way to go about it??
>>
>>>     Thanks
>>>     Amit
>>
>>
>>
>>
>>
>>
>>
>>--
>>Anders Darander
>>ChargeStorm AB / eStorm AB
>
>--
>Anders Darander
>
>ChargeStorm AB          Tel: +46 702 44 84 36
>Laxholmstorget 3        Email: anders@chargestorm.se
>602 21 Norrköping       Web: www.chargestorm.se
>
>Sent from my Android phone with K-9 Mail. Please excuse my brevity.

-- 
Anders Darander
ChargeStorm AB          Tel: +46 702 44 84 36
Laxholmstorget 3        Email: anders@chargestorm.se
602 21 Norrköping       Web: www.chargestorm.se

Sent from my Android phone with K-9 Mail. Please excuse my brevity.

