Return-Path: <wpdster@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BED20E00C0A; Tue, 17 Jun 2014 08:32:27 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.8 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (wpdster[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.128.169 listed in list.dnswl.org]
Received: from mail-ve0-f169.google.com (mail-ve0-f169.google.com
	[209.85.128.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 82D98E00AFD
	for <yocto@yoctoproject.org>; Tue, 17 Jun 2014 08:32:23 -0700 (PDT)
Received: by mail-ve0-f169.google.com with SMTP id pa12so7952561veb.0
	for <yocto@yoctoproject.org>; Tue, 17 Jun 2014 08:32:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:content-transfer-encoding;
	bh=gcF1WY4Mmeqwn4Po91eGvfhe49N1LmZstaIZEsA4AYA=;
	b=kyJo6t/htINI4myqoUhFIzqqTth4WfawbWPFsl9K+99VUAqy59lHciesqmcrzEyhCz
	GgEp9OplI4ryOMRAM6BPtBpNMwnUQdYqUOanGPfEw003OO9xly5bu8EbKZeRZOf2qXde
	mF56T2hUZOJcG9I5JO5fOjCj2Yp3LwVX4Q6CT6JUi6s9Fhgn0OMODSHGv7m8NSFnwbGg
	+JUEbtAHUTj5kvHTQH3KAKigSio0qtyUVMNOkPyFuV0tnU9jsxdTRZ1tj6+Cq6tt/MZR
	tMOPn5vGdB8t4uxpqrlCz+6p3Z3HOdB+iAibPq+JmVf+ZMbOumXegju/+x3H3sjulTUy
	x8Wg==
X-Received: by 10.52.232.133 with SMTP id to5mr18896652vdc.16.1403019142807;
	Tue, 17 Jun 2014 08:32:22 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.58.32.74 with HTTP; Tue, 17 Jun 2014 08:31:52 -0700 (PDT)
In-Reply-To: <2289204.UWFViZiKz6@peggleto-mobl5.ger.corp.intel.com>
References: <CAF_dkJB6mJjhtZHZmo6bX+q611zSyij4OvXg+Yxv5At-RpWdOA@mail.gmail.com>
	<2289204.UWFViZiKz6@peggleto-mobl5.ger.corp.intel.com>
From: Patrick Doyle <wpdster@gmail.com>
Date: Tue, 17 Jun 2014 11:31:52 -0400
Message-ID: <CAF_dkJDCDGLsYFDWJgOaXZwkiRLFE8XSkLAT-Knx-eX_qbH7tA@mail.gmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [dora] x264: Update SRCREV to match commit in upstream git repo
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
X-List-Received-Date: Tue, 17 Jun 2014 15:32:27 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Thanks Paul,
I hope I didn't step on any toes with this.  I'm still confused about
what parts of the project are "Yocto" and what parts are "OE".

Do you have any guesses as to when this might show up in the official
dora branch?

I am asking because we have a development flow here (I'm still not
sure I'm 100% happy with it, but it's what we've got), where we mirror
the poky repository, check out from that mirror very occasionally, and
generate a complete-from-scratch even more occasionally.
Unfortunately, we have a situation right now where, if somebody were
to do that (say, hypothetically speaking, a new person joins the
team), we can't generate a complete build from scratch.  I could apply
my patch to our local mirror, and thus break the mirror.  Or I could
create a local clone of the mirror and reference our local clone.  Or
=E2=80=A6

If this will show up in dora in a matter of hours to a day or so, I'm
going to stop thinking about this.  If it is anticipated that it will
take longer, then I'll come up with a solution.

I'm not trying to complain nor advocate that this patch get applied
faster than would be normal, I'm just trying to plan my day :-)

--wpd


On Tue, Jun 17, 2014 at 11:07 AM, Paul Eggleton
<paul.eggleton@linux.intel.com> wrote:
> Hi Patrick,
>
> On Tuesday 17 June 2014 09:36:05 Patrick Doyle wrote:
>> It seems that 585324fee380109acd9986388f857f413a60b896 is no
>> longer there in git and it has been rewritten to
>> ffc3ad4945da69f3caa2b40e4eed715a9a8d9526
>
> FYI I sent a similar patch for dora to the OE-Core list a week ago; hopef=
ully
> it should be merged soon.
>
> (Robert: I think my CC of the patch to you at the time bounced, not sure =
what
> happened.)
>
> Cheers,
> Paul
>
> --
>
> Paul Eggleton
> Intel Open Source Technology Centre

