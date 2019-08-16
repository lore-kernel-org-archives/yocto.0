Return-Path: <moritz.porst@gmx.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F11CCE00D89; Fri, 16 Aug 2019 01:26:59 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (moritz.porst[at]gmx.de)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at https://www.dnswl.org/,
	low *      trust
	*      [212.227.17.21 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mout.gmx.net (mout.gmx.net [212.227.17.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F2D42E003E1
	for <yocto@yoctoproject.org>; Fri, 16 Aug 2019 01:26:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
	s=badeba3b8450; t=1565944006;
	bh=xOft3bz+EpD9+2EMmrO5u6eW4J5NKv2ghKxfaVsRRps=;
	h=X-UI-Sender-Class:Subject:To:References:From:Date:In-Reply-To;
	b=eCUFMe7NVUQuxI5vueqKhxpImZTkZ/eEpFRqLiNnIR+koAI2TfltRfBvXEzaBra1f
	VYBT/C3zwx8vsnCWoV9hFZh+zbuQDZea8SmF/CRwAgxsOwX9T54YC4v1kes8K2KZ1b
	ojoEhsv717VneEQqa1TCffPv1dwkijGwFZSsM8HA=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.2.132] ([80.152.229.14]) by mail.gmx.com (mrgmx102
	[212.227.17.168]) with ESMTPSA (Nemesis) id 0MMHaL-1hvWu32jMb-0080ut;
	Fri, 16 Aug 2019 10:26:46 +0200
To: "Mittal, Anuj" <anuj.mittal@intel.com>,
	Yocto Project <yocto@yoctoproject.org>
References: <e30590c0-3122-15f6-013b-2e6c565c89c9@bry.com.br>
	<96faecc73afeba5146e926dc43b7bbcc7ee12947.camel@intel.com>
From: Moritz Porst <moritz.porst@gmx.de>
Message-ID: <e39e4c98-46d7-773a-285f-e34ddd451f01@gmx.de>
Date: Fri, 16 Aug 2019 10:26:40 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <96faecc73afeba5146e926dc43b7bbcc7ee12947.camel@intel.com>
X-Provags-ID: V03:K1:oRJxcFo8wUFX5vSI6eoqksdxi18dw2HqEhaMt5nor62KIzIkopl
	h/2R5kjZblxtnifV3R989WVG/TgXBX7uUDczVEHPGr3sjHKUKnzc1u6xAAX4o2M2bTZqlQQ
	ln1Dhs8TIZgGLWvcAyHYToLsprG6L6/wUJobcib6jf2Gh97pqt2H1/iZxr6bYnZ63UvjCWc
	tbPsQ1aoEKK+8uIbTUJow==
X-UI-Out-Filterresults: notjunk:1;V03:K0:8vBhobsigVY=:QG0ixfrP4zxD1XcZcvohmi
	HdP5b2rXdE9OYYmFdiEOCE09rA/Nj9jtrN4uZ4RC2JyufnYFFvyR6/xNYWXngdQhyAKung9kg
	819pypHzRWRBNLC5HAfUbtR7g1gYsuIsAY2++IyDmlKthfaqSRBovhpQGTxCd2M1w9tdQsywB
	bdVqy9Aw6aF/CGhUZBEd6hOEoO8LqNwiYxP3Rmn/DJwLu/bOOScEOPvRNo0Vj9uzCcKug/LRZ
	6zQfs+FWhU0M3Nj0vTRNDgusD5R5ToZAlAwOG7JhN+gotA5XfCfydJdm82bJbdVCCAMfUcZ4/
	CSk+wOUcW3i0ZjsNzTHG8GV1WWfYxjPQe3lNVvEJ7XhsQi2lV97hQvqZKy84f7GcxlyOolTzD
	gzS4ujDhMDcmToVdFSnr+ISN+l8ncUVxzGUzu7wstR6JOB4QqvnUD7pmH8teLJ4nG5h2dJq08
	VbVEZI1RZRbBbgUgfnf42u+u7V1PtHlmmEd6DKmQxhmrcunjzV0DoupR+nKvceK+Fp9qDrDZV
	d+hksxWMVgjSH+kCHTXxlPtmULnrrD4P19LgOzn5B7uB6jO+3S0nNmg08r807jEoI/fBpH8Sa
	RekTJUNI0mFC+0zNqahfxwD262WyoKSdgkoOycyP+gxbKdYFfHSux/gzfmcFXpzO71GSZ374L
	OcllC+T+wG6+siRtZSavOM8vkKMLNdSIwUsxeAo5hC9IfVLgUPUE8Q5ChHW4dKq1TTk+6p1RX
	9zrrGVcWSZ59BfXTSQXSYrgaWb/72WfogDtyRW+l7hVnxVzzaKyg9wHasYAtgWu+cdkutfIV6
	yDzfAGDp0+K5dFOIKBvyrpjocCylr7rtWKqlw4oFLDu92PmlASnRTXhHmS25OXEDWLA121S9U
	2muNAUdOB63OHpSN5YYkkJ99C9ZEAvbAQk7pXPqGv72FWGKSJBjozs7RxUhOqRZnEKlbNsIp0
	EChj4KumdRi8D76mB0yLMr2iVHIkVDZA6+5gKEKF74+6WCh+MeyY+1Nd0xp9tVmlRG35fCSlO
	z3jkSLvc+7D2LWlUQG/WXQfP+9AcW5sF6QQfeos1s+7i/drNTgqbfNCWl/q7xoz7jzRV2on4Z
	UilEf9p9phn6zhpWN9vn195O0808l9vmD/2KvZ26mrBIKJEm+9rqD24gb6b1hKr6HE5IP34Mk
	S1cO4=
Subject: Re: Trouble using initramfs
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
X-List-Received-Date: Fri, 16 Aug 2019 08:27:00 -0000
Content-Type: multipart/alternative;
	boundary="------------78DA35CB7DE373E9062E41F8"
Content-Language: en-US

--------------78DA35CB7DE373E9062E41F8
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: quoted-printable


On 16.08.19 01:17, Mittal, Anuj wrote:
> On Thu, 2019-08-15 at 19:12 -0300, Antonio Teixeira wrote:
>> Hello.
>>
>> I've been having trouble with loading initramfs on boot when the
>> initramfs is bundled with the kernel image.
>> I've been using the following options in local.conf:
>> INITRAMFS_IMAGE =3D "core-image-minimal-initramfs"
>> INITRAMFS_IMAGE_BUNDLE =3D "1"
>>
>> I'm using the linux-intel kernel from the meta-intel layer, however,
>> when booting, the kernel simply doesn't load the initramfs.
When I build a bundled kernel image I have a normal bzImage (~10mb) and
a bzImage-initramfs(~30mb) in my build directory. Check the kernel image
on your device, for me always the unbundled one gets deployed with the
image, so I copy the bundled image via "scp. You may have to increase
size of the boot partition in case you use an additional boot partition.
In wic you can use the --size <size in mb> command.
>>
>> If I set INITRAMFS_IMAGE_BUNDLE to "0", copy the generated initramfs
>> image to the boot partition, and then point grub to the external
>> initramfs.cpio.gz image using the initrd option in the boot entry
>> config, the kernel loads it fine and everything works.
> Which branch are you using? Can you try the latest master with wic?
> There was a fix to wic to allow copying the kernel image with bundled
> initramfs to boot partition instead of the one without when
> INITRAMFS_IMAGE_BUNDLE is 1.
I didn't ask the original question but have the same problem. I have the
thud branch checked out, but I couldn't find that fix on google. Can you
elaborate on this ?
>
> Thanks,
>
> Anuj
Best regards
Moritz

--------------78DA35CB7DE373E9062E41F8
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF-=
8">
  </head>
  <body text=3D"#000000" bgcolor=3D"#FFFFFF">
    <p><br>
    </p>
    <div class=3D"moz-cite-prefix">On 16.08.19 01:17, Mittal, Anuj wrote:<=
br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:96faecc73afeba5146e926dc43b7bbcc7ee12947.camel@intel.com=
">
      <pre class=3D"moz-quote-pre" wrap=3D"">On Thu, 2019-08-15 at 19:12 -=
0300, Antonio Teixeira wrote:
</pre>
      <blockquote type=3D"cite">
        <pre class=3D"moz-quote-pre" wrap=3D"">Hello.

I've been having trouble with loading initramfs on boot when the
initramfs is bundled with the kernel image.
I've been using the following options in local.conf:
INITRAMFS_IMAGE =3D "core-image-minimal-initramfs"
INITRAMFS_IMAGE_BUNDLE =3D "1"

I'm using the linux-intel kernel from the meta-intel layer, however,
when booting, the kernel simply doesn't load the initramfs.</pre>
      </blockquote>
    </blockquote>
    <font size=3D"-1">When I build a bundled kernel image I have a normal
      bzImage (~10mb) and a bzImage-initramfs(~30mb) in my build
      directory. Check the kernel image on your device, for me always
      the unbundled one gets deployed with the image, so I copy the
      bundled image via "scp. You may have to increase size of the boot
      partition in case you use an additional boot partition. In wic you
      can use the --size &lt;size in mb&gt; command.</font><br>
    <blockquote type=3D"cite"
      cite=3D"mid:96faecc73afeba5146e926dc43b7bbcc7ee12947.camel@intel.com=
">
      <blockquote type=3D"cite">
        <pre class=3D"moz-quote-pre" wrap=3D"">

If I set INITRAMFS_IMAGE_BUNDLE to "0", copy the generated initramfs
image to the boot partition, and then point grub to the external
initramfs.cpio.gz image using the initrd option in the boot entry
config, the kernel loads it fine and everything works.
</pre>
      </blockquote>
      <pre class=3D"moz-quote-pre" wrap=3D"">
Which branch are you using? Can you try the latest master with wic?
There was a fix to wic to allow copying the kernel image with bundled
initramfs to boot partition instead of the one without when
INITRAMFS_IMAGE_BUNDLE is 1.</pre>
    </blockquote>
    <font size=3D"-1">I didn't ask the original question but have the same
      problem. I have the thud branch checked out, but I couldn't find
      that fix on google. Can you elaborate on this ? </font><br>
    <blockquote type=3D"cite"
      cite=3D"mid:96faecc73afeba5146e926dc43b7bbcc7ee12947.camel@intel.com=
">
      <pre class=3D"moz-quote-pre" wrap=3D"">

Thanks,

Anuj
</pre>
    </blockquote>
    <font size=3D"-1">Best regards<br>
      Moritz</font><br>
  </body>
</html>

--------------78DA35CB7DE373E9062E41F8--
