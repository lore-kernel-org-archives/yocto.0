Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 46A74E00E04; Wed, 14 Mar 2018 12:33:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.214.68 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f68.google.com (mail-it0-f68.google.com
	[209.85.214.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 77F36E00843
	for <yocto@yoctoproject.org>; Wed, 14 Mar 2018 12:33:36 -0700 (PDT)
Received: by mail-it0-f68.google.com with SMTP id k79-v6so6170863ita.2
	for <yocto@yoctoproject.org>; Wed, 14 Mar 2018 12:33:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=Dnq4OBLPt/+ChL7gy/ljf4I9mOYi6n2Tb7qcOgL0KM4=;
	b=TfF+BOSm8shwr8RjrZ9nABZJ/Duz9vKub12CW3qAp9xztVrk0d4b4r/WgCmOAZMsDj
	8e62uYiwhLEZe3tlAXRdg/qsuabgLtZt8bES1WIEWcSkdBO5szGm9KlQxTeMJEc/91i4
	ec5o10uye31GQLTGjnMtj46Iu7FiiULpgMmq0jWHa5DljMSXLeVBOpZ7IIUdiJ7rWU13
	v9ekmDKihl4x0F1khHKnI/ugY2PZExCsVAsJ/8OpgPHLr2EB3GVKqsR1VMZoWElwO1wN
	w/++NEBnhnEL1k/ndaLsG7jEnTc7/0FqjijcqVXnGiDPiHoU1tVrmLj0vJySoBuXzYcu
	VUvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=Dnq4OBLPt/+ChL7gy/ljf4I9mOYi6n2Tb7qcOgL0KM4=;
	b=CzApK+tWDofETKq2iB8/rpn9UCvl5NnKk6FSWuYan9saDSX5TvDw6gjoUmPyfBeo0p
	3KOkRov66eWC9Y50fIFPSL5SPVkl8IffTYTqDdcmdLaC/Hb3V2N0qL3WgL27k5fZLPsa
	h+43meBtmCCjUGCDUInCmgdPsX9DBCAWfj1ODS0xZ+bQaQN6wSBFiL0qASDf7OLk+inc
	NofwNs5CaTul+0Z8D2eHIgijlSJU6TScvY3EY5YWZ+Clje32ZPkjOHLQW+jL5ljPR79y
	7guCMKj5ljzCRuifWNDmZeASopBOQ2Jq7+6785BYJeTJeoXeuY3XRI9od9+nQ9LGOYKq
	26Kg==
X-Gm-Message-State: AElRT7GSmHC+HfJYGfBNtIZihM0ErnsxGa6zpxTW7RPF6fJhcowYJqDM
	WjyHntfjf6wsfsU3A+qfS55Owd/uRk79jXHrhCkQTQ==
X-Google-Smtp-Source: AG47ELsW2DqAuomX83ys4U4sO32boGHgkQ96JxzFpWH9CG4TbDj5b0QN7sP4jgu3ivBZTx80gPCbUMexHKas+vSkLtY=
X-Received: by 10.36.66.195 with SMTP id i186mr3569515itb.45.1521056016382;
	Wed, 14 Mar 2018 12:33:36 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.30.9 with HTTP; Wed, 14 Mar 2018 12:33:15 -0700 (PDT)
In-Reply-To: <9478134a-8f67-334a-cfc8-d7a07bd1fe86@linux.intel.com>
References: <1521038859-32429-1-git-send-email-devarsht@xilinx.com>
	<9478134a-8f67-334a-cfc8-d7a07bd1fe86@linux.intel.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 14 Mar 2018 19:33:15 +0000
Message-ID: <CAJTo0Lb3o_8cOG7fCLNwsFdPPEx_5-u-qDASPHzHy8kXC2cKAw@mail.gmail.com>
To: Alexander Kanavin <alexander.kanavin@linux.intel.com>
Cc: Manjukumar Harthikote Matha <manjukum@xilinx.com>,
	Yocto-mailing-list <yocto@yoctoproject.org>,
	Devarsh Thakkar <devarsh.thakkar@xilinx.com>,
	vcu-team@xilinx.com, Devarsh Thakkar <devarsht@xilinx.com>
Subject: Re: [matchbox-terminal] main.c: Add support to run user command inside the terminal
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
X-List-Received-Date: Wed, 14 Mar 2018 19:33:38 -0000
Content-Type: multipart/alternative; boundary="001a113b88048a806f0567647380"

--001a113b88048a806f0567647380
Content-Type: text/plain; charset="UTF-8"

On 14 March 2018 at 18:44, Alexander Kanavin <
alexander.kanavin@linux.intel.com> wrote:

> On 03/14/2018 04:47 PM, Devarsh Thakkar wrote:
>
>> Add support for commandline options (--command or -e)
>> using which one can provide commands to run inside the terminal
>> as shown in below command :
>>
>>   $matchbox-terminal -e <command>
>>   $matchbox-terminal --command <command>
>>
>
> Ross, who (if anyone) has write access to the mathcbox repo? I think
> matchbox stuff is in a bit of limbo currently?
>

I do, this was having a build test earlier so I'll be pushing shortly.

Ross

--001a113b88048a806f0567647380
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">On 14 March 2018 at 18:44, Alexander Kanavin <span dir=3D"=
ltr">&lt;<a href=3D"mailto:alexander.kanavin@linux.intel.com" target=3D"_bl=
ank">alexander.kanavin@linux.intel.com</a>&gt;</span> wrote:<br><div class=
=3D"gmail_extra"><div class=3D"gmail_quote"><blockquote class=3D"gmail_quot=
e" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">=
<span class=3D"">On 03/14/2018 04:47 PM, Devarsh Thakkar wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
Add support for commandline options (--command or -e)<br>
using which one can provide commands to run inside the terminal<br>
as shown in below command :<br>
<br>
=C2=A0 $matchbox-terminal -e &lt;command&gt;<br>
=C2=A0 $matchbox-terminal --command &lt;command&gt;<br>
</blockquote>
<br></span>
Ross, who (if anyone) has write access to the mathcbox repo? I think matchb=
ox stuff is in a bit of limbo currently?<br></blockquote><div><br></div><di=
v>I do, this was having a build test earlier so I&#39;ll be pushing shortly=
.</div><div><br></div><div>Ross=C2=A0</div></div></div></div>

--001a113b88048a806f0567647380--
