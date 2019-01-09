Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7FE13E00CE7; Wed,  9 Jan 2019 05:31:34 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.166.171 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-it1-f171.google.com (mail-it1-f171.google.com
	[209.85.166.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0CC58E00CAD
	for <yocto@yoctoproject.org>; Wed,  9 Jan 2019 05:31:33 -0800 (PST)
Received: by mail-it1-f171.google.com with SMTP id c9so10968092itj.1
	for <yocto@yoctoproject.org>; Wed, 09 Jan 2019 05:31:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=JFVPUoVsyUGNrnK8XSxyFhk+urnQhC8kgxN0zhDs5K8=;
	b=ExERh0SFpMgMNgSgX0jvNohrrfqgmlWK2pAz4Vt/nrtD77koCRz1fFj/tJzwsqX+qg
	H9NtjjO0mklIMIn6zHjvq/gamMsdsPmuLxVUFBa6SpcPSCZN4ICXg1KFum7pWU3iAjdJ
	6GIZUPnYDPmfLiAVBevwUVuyugkRj4aMs8dB/YUzmgcb/Q5eIy+Rr+MEupMiewZ8seby
	J0KcK3Bb33NCLHG6qj+ZwrfNPsNFHht36a8ZLO9BK00317z3y15BerGlbfkZGx3JEl9l
	WaAWHFBUKGzRE8iG9flhKK2Np5rVRXARiuVF7LBx2slEdh8VgQRD5qUv+xFOLlsSyr8F
	wjDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=JFVPUoVsyUGNrnK8XSxyFhk+urnQhC8kgxN0zhDs5K8=;
	b=fcL3MHvbc4cU70+cqCZSSbHGTmTmvM/PGrGH21VbRJgl5nP9Ns+P9zuMfIXyuoPNf6
	r/Sv/NnWTRIV5RMKKKdptrJI9QClMkuCp/rS/PTyhJyDtHjhQPDeEPnQH/fBrFwM2O8w
	O3fFebJ0jfXVyhMn3Ed/gztiJPPYTs3zxeCae0qKBBEUul6wagPLRnDeWqcQFfGxFD7w
	WtVlt0NsyqD7BlP8mpLh4LEcM00rRD5+SjwtsRmXQ02N31Q6DWwDabfDOpzzZnYfmLWF
	O8LALAZYbYmdSGnN4XQqphQbfte4BGnrYqWiaQSSBZI8hu2PdWRfyJdHFnrbeJ0DWKDb
	x4rw==
X-Gm-Message-State: AJcUukfRVbuLyV4lGI0GJfeF6AEYSdHWND4mHSaI4fTtrIOI5Ifx7ESY
	bDBkx65aOsZHsmUunswJnx9HfhFGPWDC4+H3QOOxzg==
X-Google-Smtp-Source: ALg8bN6T1rUNmt3WyoAtENmnPCoQAiPq8Wsa2Fz1LoZHaFcrC9txY3qrmPmOO+J5IHalCv+fTJycp3+XinKSOuetwls=
X-Received: by 2002:a02:9c53:: with SMTP id h19mr4057738jal.31.1547040693447; 
	Wed, 09 Jan 2019 05:31:33 -0800 (PST)
MIME-Version: 1.0
References: <MWHPR21MB086165B1FB4C98FC687D8924E5A00@MWHPR21MB0861.namprd21.prod.outlook.com>
	<CAJTo0LaEmMpeuMJ14ZB72LBzGO9yOjtQ6HpZ2ocfTbLDEmtYhA@mail.gmail.com>
	<MWHPR21MB0174308BE768E56D94B6A1F6E5B80@MWHPR21MB0174.namprd21.prod.outlook.com>
	<CAJTo0LYcj9WPYgtgB87Es9k2Zt66U6Jz8MPnSaZg=s4JsveOkg@mail.gmail.com>
	<MWHPR21MB01740467D50403EEC49BF9AFE58A0@MWHPR21MB0174.namprd21.prod.outlook.com>
In-Reply-To: <MWHPR21MB01740467D50403EEC49BF9AFE58A0@MWHPR21MB0174.namprd21.prod.outlook.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 9 Jan 2019 13:31:22 +0000
Message-ID: <CAJTo0LajtZYYD6CsJBW_W0n9UCnUiBXXzxhmCjtN=gFLGsvrDw@mail.gmail.com>
To: Edmund Nadolski <Edmund.Nadolski@microsoft.com>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: Yocto staged builds?
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
X-List-Received-Date: Wed, 09 Jan 2019 13:31:34 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, 8 Jan 2019 at 22:10, Edmund Nadolski
<Edmund.Nadolski@microsoft.com> wrote:
> I'm thinking of a full build separated into say 3 sequential steps, A, B,=
 and C, with each step being some series of bitbake tasks.   The idea is ru=
n all the tasks in step A and then regain control so I can run some additio=
nal tools/transforms on artifacts (eg signing) produced in that step.  Then=
, resume bitbake from step B, and after that completes then again regain co=
ntrol and run some additional transforms.  Finally resume bitbake from step=
 C and let that run to completion as well.
>
> I wasn't sure whether the bitbake has that sort of "pause and resume" cap=
ability, tho perhaps the addtask in the right places is one way to effect a=
 similar result?
>
> (Apologies, this is probably a lame/awkward description on my part)

Don't do that.  Bitbake will have no knowledge of your intermediate
out-of-band changes.  Just write tasks that call the signing tools as
part of the build.

Ross

