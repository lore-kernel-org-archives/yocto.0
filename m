Return-Path: <schnitzeltony@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 134B1E00B76; Fri, 30 Mar 2018 03:45:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (schnitzeltony[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.161.182 listed in list.dnswl.org]
Received: from mail-yw0-f182.google.com (mail-yw0-f182.google.com
	[209.85.161.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9C91BE00529
	for <yocto@yoctoproject.org>; Fri, 30 Mar 2018 03:45:08 -0700 (PDT)
Received: by mail-yw0-f182.google.com with SMTP id c20so2836918ywa.2
	for <yocto@yoctoproject.org>; Fri, 30 Mar 2018 03:45:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=UUr55b0V7u16ju226rMlaGavTbDOtMkvJcHTHw1G0eo=;
	b=jF2SQS5980yMHHOsROCGgkmJ47AQwQhUMqcXFoCnch6AP5MKtzMIJE7c2NMBrryloO
	pzRuAgbUizcJVbFJaKctFiVlqvnoHLO2vN7rr0GxigWyn/V674ATT9WPFXWK5ZS7MGL1
	lAT9LkLI87pmVZJlMGKXzHVzifX8P+rdMSWztwPEZQHApvFym7DS8sdyLXM6XBT9ODDy
	uMdhWo1ZXmlIf8WnCH6trVZ1HHieNtTZYn/JPj7w5ZqvRkWYHJlBK8zBM3MvDIV8Z7XI
	TjPM7RbUUkf/PK8WKqhph/a4ZTPUwNxAtGfn8yqgnsHeXo7H3viUCsrcTtCojB8cLOcR
	NwFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=UUr55b0V7u16ju226rMlaGavTbDOtMkvJcHTHw1G0eo=;
	b=FcLjzV0lzP1R61PgTxw3YCq98cULhWXOPUUGJoRy8vWtuJzPEhAh7SpDB92MoLGS5B
	rF3SfpwMm+o0zPpJx5R4t18ZI1zpEoJg5v183Nwn4RS1z5zQLfPGTLwHt8UuXY2kGIVp
	tUjw1x0+AV2hwf5hL+wru7Ya+WU9GT+v4gYwx0P67Ecr2bg5SwnbG4aioe7+vN1D87QM
	Xcmhikrd5xRg8Qg47s48z9F7T8/g3a7lae54fpB1u7gRdI7OMdkrF3IrIKprD8RKFC1g
	Cv8qldr8HZVweSamBEcv3+xIEqDfv9XsPj9oS/Apo2o8lAYeDyDBCNpRUwxjkPqYbTFq
	3aTw==
X-Gm-Message-State: AElRT7GZ1resq5BzUGOpbcheGvzjYIfw7Pa1wSZiRrKNqFrKnhcBqdbl
	LS/r1cvgnmO6ADsHMCyGv2793/fBlEFfwUI6aUs=
X-Google-Smtp-Source: AIpwx4/z7edFptVupcujiIc+Ltl6OGMdW79Mz+a4SXFjhvw84b5B/QdK1bnYLfDoZ4ssrZN01QsM1yvOV5GszNN91rk=
X-Received: by 10.129.108.137 with SMTP id h131mr6768372ywc.180.1522406707561; 
	Fri, 30 Mar 2018 03:45:07 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a25:d105:0:0:0:0:0 with HTTP; Fri, 30 Mar 2018 03:45:07
	-0700 (PDT)
In-Reply-To: <20180329214654.GA25163@linux-uys3>
References: <CALbNGRRA3Ev3mPT4ZDRO_koC_uwVWy4qXc8onJN5nSeXnE3JRg@mail.gmail.com>
	<CAHUNapQhvr8UWBuF-Z5y0ojhsfF=fUU3nfgmRdxNGi4iKdkbqA@mail.gmail.com>
	<CAMKF1sonaNhe0jznAaVFySa5z-JOBdqxDRjifq-F04kra=_rfg@mail.gmail.com>
	<CALbNGRR0qo=yS2dop-3pfpAZVSC9NekDyg_aFCzURs7NM3UGvg@mail.gmail.com>
	<CALbNGRTKdu+H4eW8U1D4FxM9+LjfoOeZUC0c=irJyHmK69bdMQ@mail.gmail.com>
	<CALbNGRS06u3NTU=2XYRiga=B_rPj_rNyLwv2dC8hRUkx=mJt+A@mail.gmail.com>
	<CAHUNapQP=2OYu6qjf5QLmMbcurXRFo_O1fWg0_oiqCXDZykccA@mail.gmail.com>
	<CALbNGRTifa4-1SW2+zNCB_1a6+wHAjAYigMA1chrNMFiDb15Kg@mail.gmail.com>
	<CALbNGRRR2z6bZFtU=aRBrY8FqAxU1YLtJaD+TGAw3yA-Vr+6AA@mail.gmail.com>
	<20180329214654.GA25163@linux-uys3>
From: =?UTF-8?Q?Andreas_M=C3=BCller?= <schnitzeltony@gmail.com>
Date: Fri, 30 Mar 2018 12:45:07 +0200
Message-ID: <CALbNGRR__b_jq3zRaOP8iawqgPgpxnH5ceQpo7+Tq-wPdWqaow@mail.gmail.com>
To: Trevor Woerner <twoerner@gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi] Has anybody run VC4 + X + recent meta/masters lately
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
X-List-Received-Date: Fri, 30 Mar 2018 10:45:09 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Mar 29, 2018 at 11:46 PM, Trevor Woerner <twoerner@gmail.com> wrote=
:
> On Thu 2018-03-29 @ 11:34:08 PM, Andreas M=C3=BCller wrote:
>> On Thu, Mar 29, 2018 at 11:23 PM, Andreas M=C3=BCller
>> <schnitzeltony@gmail.com> wrote:
>> > On Thu, Mar 29, 2018 at 11:05 PM, Trevor Woerner <twoerner@gmail.com> =
wrote:
>> >> I've seen the 'Modifier 0x0 vs. tiling(0x7000000000000001) mismatch' =
error
>> >> and blank screen hundreds of times while working on getting chromium-=
x11
>> >> accelerated. It would happen if chromium was trying to use the system
>> >> gl/gles libraries instead of the ones it builds.
>> > Then you should give that patch a try - change is in mesa-megadriver
>> > package (building images after mesa changes takes LONG...)
>
> The solution was to let the two gl libraries install without interfering =
with
> each other (i.e. to separate locations). If I didn't install the ones chr=
omium
> built, it would try to use the system ones and fail. If I installed both =
and
> it found its own, it would succeed. So I found a solution and didn't need=
 to
> dig into this 'modifier vs tiling' issue.
>
> Having said that, I'm curious to try your patch on rpi3-64. I have never =
been
> able to get vc4 working on x11 with a 64-bit build (it also gives a 'modi=
fier
> vs tiling' error).
>
>> > Some appetizer: glmark on mesa 17.1.7 reports 110 / glmark on mesa
>> > 17.1.7 reports 145!
>
> cool!
After party hangover: sddm and kde look horrible with this patch.
Should respect linear if requested explicitly - wonder if that slows
down horses...

Andreas

