Return-Path: <mirza.krak@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8D10EE00BAA; Mon,  7 May 2018 02:03:37 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (mirza.krak[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.171 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f171.google.com (mail-pf0-f171.google.com
	[209.85.192.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5FDB2E00A4C
	for <yocto@yoctoproject.org>; Mon,  7 May 2018 02:03:36 -0700 (PDT)
Received: by mail-pf0-f171.google.com with SMTP id w129so16926372pfd.3
	for <yocto@yoctoproject.org>; Mon, 07 May 2018 02:03:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=+Gy5W90S7Tootok124h7w8UFspYsX9ChfHcwwcTS5h4=;
	b=SOAFsSRQ9DcPWIUMvBk+n4g7MiwDuzDvhx6mRXcUYToPfHaJqzVyot1V+nMDenkFXu
	AztEINLI6rboX4UydTkoKOTa7m17uwgr3JUoii+2auNjlWiAz98R1n1gXk6lY4GcGvRW
	S/yJ53VNvwZQUw0qXkv5JqW8+/hGZwW2brnQTgCA9wx+U3y0eGp108/ts+GTDJMiYx8c
	HQyiOqwzgJMuu76VrpnFFfAbOWFeIBAmR+rzDOz36TqQLLGahYu857I5XnK2DUmcflpr
	FRWqOg0j9+vTU0/i48QJKQrMc4Aq4cBPP3kqtEAbfB1F+qWk1E5+W7IQJAnfms7RyW8O
	Qy2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=+Gy5W90S7Tootok124h7w8UFspYsX9ChfHcwwcTS5h4=;
	b=CePXgOwS1sHmePNbQFTS2+iRCKlO1us5nXDqqz6LOzzUyaNhXSVdGVl1zSQ5fKOwt6
	Y5/eL+lMHpzaXX9cKmPFhMMTNvgDLie6lEEscEXyvKT8wEKAY89IzwrvY9TruGUtqrQm
	lHJQTeSG+Slsr7sHN42Fk0HqKVUhKeXPw26+z/vdyQ8SCFVRC5Q0WYkZ+QBxQGWApSeC
	wSvse9JbHHlyBywNNzaAY0neKQv9ibuDw7a5TtukmFgC2UzgcG+Oc4AK6NotIx6fyz0w
	zfgS7rXiIOtwf+u8iCt9UowY2rdHoA6RYSoG45SfJxEbVvlALvKloogWpoiORxuGC0tB
	MUDw==
X-Gm-Message-State: ALQs6tApLt8LY1IVuJwevXkLkGVAHLYhwQ+Nxv/LHIyTkQAjRkgcFoFu
	oGUyd/wCAVUZ0tf4Ir7QLOa8HWQlzOGnZg0ToPc=
X-Google-Smtp-Source: AB8JxZohtr9e8p7y41vt2Fx3Uh6DASU0nHQKFxu3VckTnEVXzsoemCi2hIHVlTLfEicDriHvtzXiUPn3SFTGam0YBQc=
X-Received: by 2002:a17:902:d24:: with SMTP id
	33-v6mr36837585plu.22.1525683815518; 
	Mon, 07 May 2018 02:03:35 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.236.189.13 with HTTP; Mon, 7 May 2018 02:03:35 -0700 (PDT)
In-Reply-To: <ecb1ab50-450e-8e77-b3af-191313296602@linux.intel.com>
References: <CAJO0J4gxf0ahVGCoV64Y_Z_cGtw4OiakWkSLbu2u4WB_CHzehQ@mail.gmail.com>
	<70e7860b-5b9f-45c7-5436-73859b0d3706@linux.intel.com>
	<CAJO0J4gz6SVhknSgPM0mGqpDR_vqsrdmNaHiXAfR4TbuxTu04Q@mail.gmail.com>
	<ecb1ab50-450e-8e77-b3af-191313296602@linux.intel.com>
From: Mirza Krak <mirza.krak@gmail.com>
Date: Mon, 7 May 2018 11:03:35 +0200
Message-ID: <CALw8SCW8hYUE4pz2CfHprZT-9+4c8wYP2rudWwj9rJC71E58ug@mail.gmail.com>
To: Alexander Kanavin <alexander.kanavin@linux.intel.com>
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: ROOTFS_RPM_DEBUG undocumented
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
X-List-Received-Date: Mon, 07 May 2018 09:03:37 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On 4 May 2018 at 14:41, Alexander Kanavin
<alexander.kanavin@linux.intel.com> wrote:
> On 05/04/2018 03:42 PM, Paulo Neves wrote:
>>
>> I will propose a patch with a default bb.debug, and always have the
>> verbose on dnf. Let's see how it affects the performance. I cannot
>> test this in a docker container because of the problems described
>> below:
>>
>> In the mean time I found what was happening with my slow do_rootfs. I
>> was running bitbake with RPM packaging in a docker instance. It seems
>> there is a problem with RPM/dnf in bitbake where it is extremely slow
>> inside a docker container (1 file per second). After changing to IPK
>> packages everything went smoothly.
>>
>> Others have had the same problem[1]. I will later report this to
>> openembedded mailing list as this effectively makes RPM unusable in a
>> container. I will also provide a Dockerfile to reproduce this problem.
>>
>> [1] https://github.com/moby/moby/issues/23137#issuecomment-359097008
>
>
> No need to report. We have already fixed this and reported upstream:
>
> http://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/meta/recipes-devtools=
/rpm/files/0001-Revert-Set-FD_CLOEXEC-on-opened-files-before-exec-fr.patch

I have also been bitten by rpm performance issues in docker and glad
that I found this. I am in the process of verifying above (on pyro
branch).

Is this patch on its way to pyro and rocko branches?

--=20
Med V=C3=A4nliga H=C3=A4lsningar / Best Regards

Mirza Krak

