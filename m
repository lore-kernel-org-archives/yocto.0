Return-Path: <armccurdy@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 59F2BE00D67; Fri, 15 Apr 2016 01:06:00 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (armccurdy[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.68 listed in list.dnswl.org]
Received: from mail-wm0-f68.google.com (mail-wm0-f68.google.com [74.125.82.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 17F0CE009D7
	for <yocto@yoctoproject.org>; Fri, 15 Apr 2016 01:05:56 -0700 (PDT)
Received: by mail-wm0-f68.google.com with SMTP id y144so3889859wmd.0
	for <yocto@yoctoproject.org>; Fri, 15 Apr 2016 01:05:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-transfer-encoding;
	bh=V22vso0bU0jmVG7vBJw6/JF1OWxqvuynEUFjyGSnQZ0=;
	b=UWFEAc52fUfVJB5IYXqz7xiPfKLRXdtLaPae75kSAl/mNK2AT0ZQcjZ23FD9PmmV6V
	fyBtYoe0amn0w12/cNMIRTOL2o8duub0jYM/QSTKrNwPLozr7eW+sDSRxjaXKezBWTsk
	v0UIvPGWArLOyCmA2vXg2PwkN2dAW7bCVHdx9VXpZj3V/dTKhW4HhxFmyw/PrnZkOgoj
	ohZxv8qTVkf6QKCAaULC4gGlC39hkIxkWjtf3USMhEYL0vcKZLMXyIlJHouzf/eWxGMC
	/1WfYPAGN5Ux+8J0XUZfL1T8ltz+Sz+GQElxpp4nm8+Qaph0enrU/ArZlUxutNmTeepg
	H8RQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-transfer-encoding;
	bh=V22vso0bU0jmVG7vBJw6/JF1OWxqvuynEUFjyGSnQZ0=;
	b=cVsc3nyceZrm93oSOMKH/EzfNZqDvelswz5dhRhPYl74XZkwfYpY/urPJZE4poXUyR
	WkTrVNIJZzyh0b8IK5pG5f9D87H/Q98GK5XMrLkAx//+9KR9EH+2Y12jchd1D/sQdD7e
	oEbrDJAG3fyAyn6ybYIOU7IW0VzhF7AO0NiSQfFfxcI/fihVEVzrMYgCloGZioPSdRMB
	cVdqYpnOuEbflijz/UIYU+eL79uNtWBvzJ146nADPRigM0x52JJayphi3jWCiP90yMsl
	TC/zneHcCWFsyTAEI32w/Xi5IIX18zvDhEYaVEsm6jDw4kubfH/afUK95z35S74zDZjN
	Q8eg==
X-Gm-Message-State: AOPr4FVKd1AgrEoH6e9GnLk17nDc0FMqo/sWbnJ5JULsj04Ts+8uQQ+zAGs15k4kEvBbCsWeZZjAb6qucTXTtw==
MIME-Version: 1.0
X-Received: by 10.28.138.196 with SMTP id m187mr2792030wmd.61.1460707555886;
	Fri, 15 Apr 2016 01:05:55 -0700 (PDT)
Received: by 10.194.235.3 with HTTP; Fri, 15 Apr 2016 01:05:55 -0700 (PDT)
In-Reply-To: <14E4216AB3B3624BB1E80BC692D0F413D8D3A40C@EU-EHV-EXM01-P.global.tektronix.net>
References: <14E4216AB3B3624BB1E80BC692D0F413D8D3A301@EU-EHV-EXM01-P.global.tektronix.net>
	<CAJTo0LYoTANyh5sdgb_ru8JkjKCQ1S0RkyXLfaKmgu+fb8MTow@mail.gmail.com>
	<14E4216AB3B3624BB1E80BC692D0F413D8D3A40C@EU-EHV-EXM01-P.global.tektronix.net>
Date: Fri, 15 Apr 2016 01:05:55 -0700
Message-ID: <CAJ86T=VApngN2E-3dBCh76w7gg6pSJ478yyMG+R9ps=1o_A1qw@mail.gmail.com>
From: Andre McCurdy <armccurdy@gmail.com>
To: "Vajzovic, Tom" <Tom.Vajzovic@irisys.co.uk>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: bitbake -c clean for all recipes
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
X-List-Received-Date: Fri, 15 Apr 2016 08:06:00 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Fri, Apr 15, 2016 at 12:18 AM, Vajzovic, Tom
<Tom.Vajzovic@irisys.co.uk> wrote:
> Hi Ross & Raj,
>
> From: Burton, Ross [mailto:ross.burton@intel.com]
> Sent: 14 April 2016 17:25
>>
>> On 14 April 2016 at 12:18, Vajzovic, Tom <Tom.Vajzovic@irisys.co.uk> wro=
te:
>> What command can I use to do the equivalent of running
>> "bitbake -c clean" (or cleanstate etc) for all recipes that have previou=
sly been run?
>>
>> The easy answer here is rm -rf tmp/.
>
> And what about cleanstate or cleanall?

  clean : roughly the same as removing tmp
  cleansstate : roughly the same as removing tmp and sstate-cache
  cleanall : roughly the same as removing tmp, sstate-cache and downloads

>> What do you actually want to do?
>
> What I want to do is be certain that I am in the exact state that I would=
 be in if I had made a clean checkout and then build from scratch.

Then remove tmp, sstate-cache and downloads. To be certain, remove
your build directory too.

There's not usually any need to do this kind of thing though (apart
from as a learning exercise).

> The particular case that made me ask was that I added BB_GENERATE_MIRROR_=
TARBALLS =3D "1" to local.conf and wanted to trigger doing that.  The fact =
that just running bitbake <imagename> didn't do it made me paranoid about w=
hat other changes I might make that wouldn't get picked up, so I want to kn=
ow how to roll back to set points in the build process and build from there=
 (eg: clean, cleanstate, cleanall and any others that you can tell me about=
).
>
> Many thanks,
> Tom
>
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

