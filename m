Return-Path: <dariusz.pelowski@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 50EC7E00BFF; Fri, 27 Nov 2015 05:00:46 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (dariusz.pelowski[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.52 listed in list.dnswl.org]
Received: from mail-wm0-f52.google.com (mail-wm0-f52.google.com [74.125.82.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DDD51E00BF4
	for <yocto@yoctoproject.org>; Fri, 27 Nov 2015 05:00:41 -0800 (PST)
Received: by wmvv187 with SMTP id v187so69958837wmv.1
	for <yocto@yoctoproject.org>; Fri, 27 Nov 2015 05:00:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=MFewH8VR0eyl4RuC8gOIGDIIX+5HIEhDdqpQKdmPUZo=;
	b=zIPJzW01LjQJC0WTinL/D/hdspURYxDrcuoOZS7a6u9id6RlgoWcgHXN4PB7JknwYz
	Y0PXXaMg8xLCTwjtFtv7DaUJwRjXpG+iwfYqlaEWaFHVbTWso8WsqIjdFA3GEXig1RF4
	z8q2f1PoN4utyNAfKP5FQAUj5vNgqfISBpgGOr4dBxP7FA9EM/V3XZX0io9StiEmvN0l
	iH1qz6unxX4gPQ1bkwC9Je/eopn+2gJxxSGePOxn0R1IH0fhXOGModIEL53/6Y7bTn+I
	Sw/DbMlVuzPVzCzmMXmR8RTUNYsMJKWgkufFgNewgD67Xvdgw72Ha0adLmUL03T7EDV2
	64+Q==
MIME-Version: 1.0
X-Received: by 10.28.216.72 with SMTP id p69mr11053214wmg.14.1448629240588;
	Fri, 27 Nov 2015 05:00:40 -0800 (PST)
Received: by 10.27.217.198 with HTTP; Fri, 27 Nov 2015 05:00:40 -0800 (PST)
In-Reply-To: <CAJTo0LYv4o2xvN6P5N+T70OfPzs0FX7rHqhVsKCiTEEyLdF13A@mail.gmail.com>
References: <CAJ73Ay5nUUdU7BO2dQQF0ToEiuzX1cxd6nMWHvtZmoHfu32X_Q@mail.gmail.com>
	<CAJTo0LYv4o2xvN6P5N+T70OfPzs0FX7rHqhVsKCiTEEyLdF13A@mail.gmail.com>
Date: Fri, 27 Nov 2015 14:00:40 +0100
Message-ID: <CAJ73Ay4=3tkOxpbjXe0cbDc5_r7O+RnjNV6FP2niOdfd9s29iw@mail.gmail.com>
From: Dariusz Pelowski <dariusz.pelowski@gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Failing devshell
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
X-List-Received-Date: Fri, 27 Nov 2015 13:00:46 -0000
Content-Type: multipart/alternative; boundary=001a11469ac84bf2650525854788

--001a11469ac84bf2650525854788
Content-Type: text/plain; charset=UTF-8

2015-11-27 13:45 GMT+01:00 Burton, Ross <ross.burton@intel.com>:

>
> On 26 November 2015 at 17:25, Dariusz Pelowski <dariusz.pelowski@gmail.com
> > wrote:
>
>> Is it acceptable solution? Could you apply attached patch?
>>
>
> That's exactly the right thing to do.  Can you reformat the commit message
> to match git style ("lib/oe/terminal: use C locale when determining
> version" as the first line, the important bit being the submodule at the
> beginning) and re-send the patch to the
> openembedded-core@lists.openembedded.org mailing list?
>
> Thanks,
> Ross
>

Sure,

Thanks,
Dariusz

--001a11469ac84bf2650525854788
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><div class=3D"gmail_quote">2015=
-11-27 13:45 GMT+01:00 Burton, Ross <span dir=3D"ltr">&lt;<a href=3D"mailto=
:ross.burton@intel.com" target=3D"_blank">ross.burton@intel.com</a>&gt;</sp=
an>:<br><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left-width:1px;border-left-color:rgb(204,204,204);border-left-style=
:solid;padding-left:1ex"><div dir=3D"ltr"><div class=3D"gmail_extra"><span =
class=3D""><br><div class=3D"gmail_quote">On 26 November 2015 at 17:25, Dar=
iusz Pelowski <span dir=3D"ltr">&lt;<a href=3D"mailto:dariusz.pelowski@gmai=
l.com" target=3D"_blank">dariusz.pelowski@gmail.com</a>&gt;</span> wrote:<b=
r><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;borde=
r-left-width:1px;border-left-color:rgb(204,204,204);border-left-style:solid=
;padding-left:1ex"><div>Is it acceptable solution? Could you apply attached=
 patch?<br></div></blockquote></div><br></span>That&#39;s exactly the right=
 thing to do.=C2=A0 Can you reformat the commit message to match git style =
(&quot;lib/oe/terminal: use C locale when determining version&quot; as the =
first line, the important bit being the submodule at the beginning) and re-=
send the patch to the <a href=3D"mailto:openembedded-core@lists.openembedde=
d.org" target=3D"_blank">openembedded-core@lists.openembedded.org</a> maili=
ng list?</div><div class=3D"gmail_extra"><br></div><div class=3D"gmail_extr=
a">Thanks,</div><div class=3D"gmail_extra">Ross</div></div>
</blockquote></div><br></div><div class=3D"gmail_extra">Sure,<div><br></div=
><div>Thanks,</div><div>Dariusz</div><div><br></div></div></div>

--001a11469ac84bf2650525854788--
