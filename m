Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web11.5349.1574939977110435945
 for <yocto@lists.yoctoproject.org>;
 Thu, 28 Nov 2019 03:19:37 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=softfail (domain: 3mdeb.com, ip: 140.211.169.56, mailfrom: maciej.pijanowski@3mdeb.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B44C5E0108D; Thu, 28 Nov 2019 03:19:36 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [178.33.251.53 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from 1.mo178.mail-out.ovh.net (1.mo178.mail-out.ovh.net [178.33.251.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 61C4BE0108B
	for <yocto@yoctoproject.org>; Thu, 28 Nov 2019 03:19:35 -0800 (PST)
Received: from player728.ha.ovh.net (unknown [10.108.54.133])
	by mo178.mail-out.ovh.net (Postfix) with ESMTP id B97667A622
	for <yocto@yoctoproject.org>; Thu, 28 Nov 2019 09:54:48 +0100 (CET)
Received: from 3mdeb.com (85-222-117-222.dynamic.chello.pl [85.222.117.222])
	(Authenticated sender: maciej.pijanowski@3mdeb.com)
	by player728.ha.ovh.net (Postfix) with ESMTPSA id ADB8CC908FD0;
	Thu, 28 Nov 2019 08:54:46 +0000 (UTC)
Subject: Re: [yocto] Architecture of .wic approach; image of images
To: Leon Woestenberg <leon@sidebranch.com>,
 Yocto List <yocto@yoctoproject.org>
References: <CAMjhiJi45vpJ-vCuqdbFKv8gmR=XLgDLz9z=ViFvoV7SDOUMqA@mail.gmail.com>
From: "Maciej Pijanowski" <maciej.pijanowski@3mdeb.com>
Message-ID: <8d6041c4-7f20-0b84-fd1a-da0bd1fd5135@3mdeb.com>
Date: Thu, 28 Nov 2019 09:54:45 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.1
MIME-Version: 1.0
In-Reply-To: <CAMjhiJi45vpJ-vCuqdbFKv8gmR=XLgDLz9z=ViFvoV7SDOUMqA@mail.gmail.com>
X-Ovh-Tracer-Id: 10040775373107375785
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedufedrudeiiedguddviecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjqdffgfeufgfipdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenucfjughrpefuvfhfhffkffgfgggjtgesrgdtreertdefjeenucfhrhhomhepofgrtghivghjucfrihhjrghnohifshhkihcuoehmrggtihgvjhdrphhijhgrnhhofihskhhiseefmhguvggsrdgtohhmqeenucffohhmrghinhepfehmuggvsgdrtghomhdphihotghtohhprhhojhgvtghtrdhorhhgnecukfhppedtrddtrddtrddtpdekhedrvddvvddruddujedrvddvvdenucfrrghrrghmpehmohguvgepshhmthhpqdhouhhtpdhhvghlohepphhlrgihvghrjedvkedrhhgrrdhovhhhrdhnvghtpdhinhgvtheptddrtddrtddrtddpmhgrihhlfhhrohhmpehmrggtihgvjhdrphhijhgrnhhofihskhhiseefmhguvggsrdgtohhmpdhrtghpthhtohephihotghtoheshihotghtohhprhhojhgvtghtrdhorhhgnecuvehluhhsthgvrhfuihiivgeptd
Content-Type: multipart/alternative;
 boundary="------------BAB63DE01E46C8711FFE059C"
Content-Language: en-US

--------------BAB63DE01E46C8711FFE059C
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit


On 28.11.2019 09:37, Leon Woestenberg wrote:
> Hello all,
>
> What is the intended approach of building images using WIC?
>
> Most image types (except .wic) build a (root or initial ram) 
> filesystem from *packages*, then create the respective archive or 
> filesystem from it.
I think the rootfs is *always* assembled in the workdir (no matter which 
IMAGE_FSTYPES you choose.
>
> The .wic image type however, builds an image from *images* rather than 
> packages.
I'm not sure if this is correct. WIC is just one of the IMAGE_FSTYPES to 
choose from.
It does a little bit more then the tar.gz FSTYPE. The tar.gz just 
compresses the content
of rootfs. The WIC FSTYPE creates a disk image and installs the rootfs 
on a given
partition (depends on the WKS file chosen). The rootfs source is the same in
those both cases, no matter which FSTYPES you choose. It is made up of 
packages.
>
> It therefore seems incorrect we can just add IMAGE_FSTYPES += "wic", 
> because the corresponding .wks might depend on multiple other images 
> than just ${PN}.
>
> Should we, or do we have a recipe example that builds only a .wic 
> image, based on one or more other existing images? (and thus not 
> populate a filesystem itself)
I have not seen such case yet. IIUC, rootfs in the workdir is always 
populated when the image is built.
>
> Regards,
>
> Leon.
>
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
>
> View/Reply Online (#47445): https://lists.yoctoproject.org/g/yocto/message/47445
> Mute This Topic: https://lists.yoctoproject.org/mt/63986097/3616795
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub  [maciej.pijanowski@3mdeb.com]
> -=-=-=-=-=-=-=-=-=-=-=-

-- 
Maciej Pijanowski
Embedded Systems Engineer
https://3mdeb.com | @3mdeb_com


--------------BAB63DE01E46C8711FFE059C
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <p><br>
    </p>
    <div class="moz-cite-prefix">On 28.11.2019 09:37, Leon Woestenberg
      wrote:<br>
    </div>
    <blockquote type="cite"
cite="mid:CAMjhiJi45vpJ-vCuqdbFKv8gmR=XLgDLz9z=ViFvoV7SDOUMqA@mail.gmail.com">
      <meta http-equiv="content-type" content="text/html; charset=UTF-8">
      <div dir="ltr">Hello all,
        <div><br>
        </div>
        <div>What is the intended approach of building images using WIC?</div>
        <div><br>
        </div>
        <div>Most image types (except .wic) build a (root or initial
          ram) filesystem from *packages*, then create the respective
          archive or filesystem from it.</div>
      </div>
    </blockquote>
    I think the rootfs is *always* assembled in the workdir (no matter
    which IMAGE_FSTYPES you choose.<br>
    <blockquote type="cite"
cite="mid:CAMjhiJi45vpJ-vCuqdbFKv8gmR=XLgDLz9z=ViFvoV7SDOUMqA@mail.gmail.com">
      <div dir="ltr">
        <div><br>
        </div>
        <div>The .wic image type however, builds an image from *images*
          rather than packages.</div>
      </div>
    </blockquote>
    I'm not sure if this is correct. WIC is just one of the
    IMAGE_FSTYPES to choose from.<br>
    It does a little bit more then the tar.gz FSTYPE. The tar.gz just
    compresses the content<br>
    of rootfs. The WIC FSTYPE creates a disk image and installs the
    rootfs on a given<br>
    partition (depends on the WKS file chosen). The rootfs source is the
    same in<br>
    those both cases, no matter which FSTYPES you choose. It is made up
    of packages.<br>
    <blockquote type="cite"
cite="mid:CAMjhiJi45vpJ-vCuqdbFKv8gmR=XLgDLz9z=ViFvoV7SDOUMqA@mail.gmail.com">
      <div dir="ltr">
        <div><br>
        </div>
        <div>It therefore seems incorrect we can just add IMAGE_FSTYPES
          += "wic", because the corresponding .wks might depend on
          multiple other images than just ${PN}.<br>
        </div>
        <div><br>
        </div>
        <div>Should we, or do we have a recipe example that builds only
          a .wic image, based on one or more other existing images? (and
          thus not populate a filesystem itself)<br>
        </div>
      </div>
    </blockquote>
    I have not seen such case yet. IIUC, rootfs in the workdir is always
    populated when the image is built.<br>
    <blockquote type="cite"
cite="mid:CAMjhiJi45vpJ-vCuqdbFKv8gmR=XLgDLz9z=ViFvoV7SDOUMqA@mail.gmail.com">
      <div dir="ltr">
        <div><br>
        </div>
        <div>Regards,</div>
        <div><br>
        </div>
        <div>Leon.<br>
        </div>
        <div><br>
        </div>
      </div>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <pre class="moz-quote-pre" wrap="">-=-=-=-=-=-=-=-=-=-=-=-
Links: You receive all messages sent to this group.

View/Reply Online (#47445): <a class="moz-txt-link-freetext" href="https://lists.yoctoproject.org/g/yocto/message/47445">https://lists.yoctoproject.org/g/yocto/message/47445</a>
Mute This Topic: <a class="moz-txt-link-freetext" href="https://lists.yoctoproject.org/mt/63986097/3616795">https://lists.yoctoproject.org/mt/63986097/3616795</a>
Group Owner: <a class="moz-txt-link-abbreviated" href="mailto:yocto+owner@lists.yoctoproject.org">yocto+owner@lists.yoctoproject.org</a>
Unsubscribe: <a class="moz-txt-link-freetext" href="https://lists.yoctoproject.org/g/yocto/unsub">https://lists.yoctoproject.org/g/yocto/unsub</a>  [<a class="moz-txt-link-abbreviated" href="mailto:maciej.pijanowski@3mdeb.com">maciej.pijanowski@3mdeb.com</a>]
-=-=-=-=-=-=-=-=-=-=-=-
</pre>
    </blockquote>
    <pre class="moz-signature" cols="72">-- 
Maciej Pijanowski
Embedded Systems Engineer
<a class="moz-txt-link-freetext" href="https://3mdeb.com">https://3mdeb.com</a> | @3mdeb_com</pre>
  </body>
</html>

--------------BAB63DE01E46C8711FFE059C--
