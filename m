Return-Path: <jdhanasekarmca@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4E5BFE009AC; Wed,  8 Aug 2018 21:13:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_IMAGE_ONLY_24,
	HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (jdhanasekarmca[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.214.46 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 1.6 HTML_IMAGE_ONLY_24 BODY: HTML: images with 2000-2400 bytes of
	words *  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f46.google.com (mail-it0-f46.google.com
	[209.85.214.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F19EBE00875
	for <yocto@yoctoproject.org>; Wed,  8 Aug 2018 21:13:18 -0700 (PDT)
Received: by mail-it0-f46.google.com with SMTP id d9-v6so845744itf.2
	for <yocto@yoctoproject.org>; Wed, 08 Aug 2018 21:13:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=0O4HdiNgYImkZmj1tCJMz1D/Q5ALIiEljJKTeXs8VYE=;
	b=dHdJi9eTtxk5qX+U2W16agznEhF/rcunNJu5AHtjNEb64qcFvYQpiasOEjVsQE/s+c
	Rq9RihHmCsFtjw8b8O+nwk9GwsP5VPiyXkun2mFdme77kDpsT5C8qdvku62hhYTRLRxw
	oOn4zyFrsiqL207Akg7A0ltc1Yp5rXmhaa1GxvDtnyKbC1vXWF+qZo1vukx8luBTSfdu
	8oT4LwRoNGtguzILOI2iKbQ4ze7/wOudDkqYD4lnv+yFblSQOHiFHgSEPXeLtK8hPuRN
	7KVgXOTBxHhAF49eLsHUxmkkYWPagdeGuEoTe+tEl70ChvEfW89e97lDjLE6FO3SiF/x
	k26Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=0O4HdiNgYImkZmj1tCJMz1D/Q5ALIiEljJKTeXs8VYE=;
	b=HSeqRZps+4ypYTbbkDyf/M+gt1XkPofiDz98CYFe7ApbzXSgbOjuC4RIgOZi/RxRDK
	Jq+x+LFKMzuhYhDmjEQUlJdOm2agFMHWc7UfiwfQbuTkBfNG4PeQES42L8bO4iDcUn7J
	HlYySVRY259VOvpNvKl2pcV6wFm9s3XSfMEjThYyi3OWGhDZNOwb658wjZzySLcBQqK6
	j5yBd1Omz1ny7ZJeD7WwnzPtImgaOXzSAqgQHxRQShmO6Pq2W20n7zrsHmwFzz03jGGX
	gRfrS1VM0mAyPed5RwVFaJCl8QdzbW9J/xzaaZKI8KwmlnNaXcRAp0r36cl2eLYH+/IP
	sb1g==
X-Gm-Message-State: AOUpUlHd7XRfAl/Ciuf6/ee+QDqlp5nFdHcRr6Ak/kJjaATIBsR+rcWA
	V69wvx3HODKz3brlRozqw+HfSqe+9bVYlyhc+uMMUIz/7PA=
X-Google-Smtp-Source: AA+uWPzKfmh48sHjvrXT8CaCLH564TN/FI/m75eEMhi1RQg8vGi9FZhKX8hOO2NSWuntPxDtl2pOzDUW9EYp5rXgYtA=
X-Received: by 2002:a02:8b57:: with SMTP id w23-v6mr362695jak.73.1533787997819;
	Wed, 08 Aug 2018 21:13:17 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a02:6952:0:0:0:0:0 with HTTP;
	Wed, 8 Aug 2018 21:13:16 -0700 (PDT)
In-Reply-To: <CAE4v+fSOb=sYna8741eS83oc8FAuPf3vZh3+qABNxnUrrFRPfg@mail.gmail.com>
References: <CAE4v+fRrFSmqOR_rfkdhRTh7emfam5MPimncM7PgUJok+hTXeg@mail.gmail.com>
	<d49dcac3-4e53-67c8-6b7e-6f6019b02fb6@intel.com>
	<CAE4v+fSOb=sYna8741eS83oc8FAuPf3vZh3+qABNxnUrrFRPfg@mail.gmail.com>
From: Dhanasekar Jaganathan <jdhanasekarmca@gmail.com>
Date: Thu, 9 Aug 2018 09:43:16 +0530
Message-ID: <CAE4v+fRe=YOc0+5KsY_j88=VVfUFujPs0t1bnkqUKYvMeg0pow@mail.gmail.com>
To: Anuj Mittal <anuj.mittal@intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: [meta-intel] Getting black screen for Install option
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
X-List-Received-Date: Thu, 09 Aug 2018 04:13:19 -0000
X-Groupsio-MsgNum: 42066
Content-Type: multipart/related; boundary="000000000000c575880572f8d8e2"

--000000000000c575880572f8d8e2
Content-Type: multipart/alternative; boundary="000000000000c575860572f8d8e1"

--000000000000c575860572f8d8e1
Content-Type: text/plain; charset="UTF-8"

Hi Anuj,

As per your suggestion, I have made the changes for "install option, Still
I am getting black screen,





Thanks,
Dhanasekar

On Wed, Aug 8, 2018 at 9:01 PM, Dhanasekar Jaganathan <
jdhanasekarmca@gmail.com> wrote:

> Hi Anuj..... You want me to add this change in systemd-boot..? If wrong ,
> please correct me.
>
> On Wed 8 Aug, 2018, 7:10 PM Anuj Mittal, <anuj.mittal@intel.com> wrote:
>
>> On 08/08/2018 08:58 PM, Dhanasekar Jaganathan wrote:
>> >
>> > Hi All,
>> >
>> > I have created yocot bootable USB live image by this command "*sudo dd
>> > if=core-image-sato-intel-core2-32.hddimg of=/dev/sdb1"*
>> > "
>> >
>> > After power on my system, I have got three options,
>> >
>> > 1. boot
>> > 2. install
>> > 3. Reboot into firmware.
>> >
>> >
>> > When I select "install" to install yocto on mSata, I am getting black
>> > screen.
>> > I am using com port serial console for video propose. My board has no
>> > support for onboard or offboard VGA.
>> >
>>
>> May be try adding serial console 'console=ttyS0,115200' in kernel boot
>> line when using 'install'.
>>
>>

--000000000000c575860572f8d8e1
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Anuj,<div><br></div><div>As per your suggestion, I have=
 made the changes for &quot;install option, Still I am getting black screen=
,</div><div><br></div><div><div><img src=3D"cid:ii_jkm1r7jm0_1651ce3258f0b5=
b5" width=3D"472" height=3D"156"><br></div><br></div><div><br></div><div><b=
r></div><div>Thanks,</div><div>Dhanasekar</div></div><div class=3D"gmail_ex=
tra"><br><div class=3D"gmail_quote">On Wed, Aug 8, 2018 at 9:01 PM, Dhanase=
kar Jaganathan <span dir=3D"ltr">&lt;<a href=3D"mailto:jdhanasekarmca@gmail=
.com" target=3D"_blank">jdhanasekarmca@gmail.com</a>&gt;</span> wrote:<br><=
blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px=
 #ccc solid;padding-left:1ex"><div dir=3D"auto">Hi Anuj..... You want me to=
 add this change in systemd-boot..? If wrong , please correct me.</div><div=
 class=3D"HOEnZb"><div class=3D"h5"><br><div class=3D"gmail_quote"><div dir=
=3D"ltr">On Wed 8 Aug, 2018, 7:10 PM Anuj Mittal, &lt;<a href=3D"mailto:anu=
j.mittal@intel.com" target=3D"_blank">anuj.mittal@intel.com</a>&gt; wrote:<=
br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;borde=
r-left:1px #ccc solid;padding-left:1ex">On 08/08/2018 08:58 PM, Dhanasekar =
Jaganathan wrote:<br>
&gt; <br>
&gt; Hi All,<br>
&gt; <br>
&gt; I have created yocot bootable USB live image by this command &quot;*su=
do dd<br>
&gt; if=3Dcore-image-sato-intel-<wbr>core2-32.hddimg of=3D/dev/sdb1&quot;*<=
br>
&gt; &quot;<br>
&gt; <br>
&gt; After power on my system, I have got three options,<br>
&gt; <br>
&gt; 1. boot<br>
&gt; 2. install<br>
&gt; 3. Reboot into firmware.<br>
&gt; <br>
&gt; <br>
&gt; When I select &quot;install&quot; to install yocto on mSata, I am gett=
ing black<br>
&gt; screen.<br>
&gt; I am using com port serial console for video propose. My board has no<=
br>
&gt; support for onboard or offboard VGA.<br>
&gt; <br>
<br>
May be try adding serial console &#39;console=3DttyS0,115200&#39; in kernel=
 boot<br>
line when using &#39;install&#39;.<br>
<br>
</blockquote></div>
</div></div></blockquote></div><br></div>

--000000000000c575860572f8d8e1--

--000000000000c575880572f8d8e2
Content-Type: image/png; name="image.png"
Content-Disposition: inline; filename="image.png"
Content-Transfer-Encoding: base64
Content-ID: <ii_jkm1r7jm0_1651ce3258f0b5b5>
X-Attachment-Id: ii_jkm1r7jm0_1651ce3258f0b5b5

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

--000000000000c575880572f8d8e2--
