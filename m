Return-Path: <mirza@mkrak.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C52A7E008F2; Mon,  2 Apr 2018 13:03:10 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.160.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pl0-f65.google.com (mail-pl0-f65.google.com
	[209.85.160.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 16EC5E00843
	for <yocto@yoctoproject.org>; Mon,  2 Apr 2018 13:03:09 -0700 (PDT)
Received: by mail-pl0-f65.google.com with SMTP id b6-v6so3573299pla.11
	for <yocto@yoctoproject.org>; Mon, 02 Apr 2018 13:03:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=mkrak-org.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:content-transfer-encoding;
	bh=2CBU7qwogwnVm5lRsKcG9hS0bYz9bfxs+QlTKzoLk+k=;
	b=q+DhwWQSosNK1tfrkd/zE+IwMiZzu57Njt8TZUytIuVRaiYDg9tQ7TKCnwxiOLGhOy
	KpvRqm6ArFakK7IGkfPwbIWmnGss9hM6pOxuz7/XTMbZK4IkP7Vfx5/BmRycEy8jbch5
	rxxDwl1zi/PPqIOXt5xLINJhYNy+SF7W8GFKeXHXAXHipPztyyx5QHNgZAFOlYEP+tR8
	IJMl59XuGa93thEVuwzCPB7wxBn4YyQ9+5p8h0xbbmAjXjY4UWl5owgBNR4vCFVtOgJn
	iHACldl9rhrUkfiE17uFxcrR3nnGAVTMHNPp8KIlKr78uWCCw86gNmoOlFWOyoKz1W7u
	eiWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:content-transfer-encoding;
	bh=2CBU7qwogwnVm5lRsKcG9hS0bYz9bfxs+QlTKzoLk+k=;
	b=gv+rkOyRMxg2iYCy80kJSpFGPyszvPPt0/dV/A6EHFgsgqYs4thmNbJi4QjoJXg/yz
	4zZswC9tihkLnulyDpMebnNTNOxI+VhNF0+b2vZctaJ+K7RUgv/FQgVbSz+UoqSo/UqC
	2sAvEmkv8BY139+yIWzPsir+wGUcWur24QPjZWtuvGayAfShphjygm1MMBN2Nmr13H5/
	BlE9GIKgjS+Q34xbIbyI8rqUCH+cc+CEdWw5fD++MztVVZroqNQkmq4xzwwIyUA6f4Pd
	MM2JAFSMNujQnG9PWNY1VotNErA1fvf3YAe49wVMf6jOMC8myXRUgtfguvwLQQLZKv7u
	sovg==
X-Gm-Message-State: AElRT7F7T2RxSjFfJD3HCZROL7A/ky56iMUUeGYr6oeDPgViFF7A3Kvx
	ujBCdbEyuoElbKpuwMeqzj4eQJJr
X-Google-Smtp-Source: AIpwx4+OFjaCDcWxSdG0EKxQ5BzQ2bvYnXfKLESZzxQYBh4Ebld60cXwyBphoPbhY1+KmGxPrs9fIw==
X-Received: by 10.101.83.65 with SMTP id w1mr7183339pgr.111.1522699389118;
	Mon, 02 Apr 2018 13:03:09 -0700 (PDT)
Received: from mail-pl0-f43.google.com (mail-pl0-f43.google.com.
	[209.85.160.43])
	by smtp.gmail.com with ESMTPSA id t1sm1788419pgs.47.2018.04.02.13.03.08
	for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 02 Apr 2018 13:03:08 -0700 (PDT)
Received: by mail-pl0-f43.google.com with SMTP id s10-v6so3577446plp.0
	for <yocto@yoctoproject.org>; Mon, 02 Apr 2018 13:03:08 -0700 (PDT)
X-Received: by 10.99.188.9 with SMTP id q9mr6932282pge.381.1522699388061; Mon,
	02 Apr 2018 13:03:08 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.236.176.2 with HTTP; Mon, 2 Apr 2018 13:03:07 -0700 (PDT)
In-Reply-To: <CALw8SCWFyOGyZAcDL-apRLpK9nKj+4+VA7_v_kSvTd+kN3w5vw@mail.gmail.com>
References: <CALw8SCXWCB3zA2Y8Aw0HZGxQ2dhEo2Mf2Dw-w+gtAMphLskv-w@mail.gmail.com>
	<CALw8SCWFyOGyZAcDL-apRLpK9nKj+4+VA7_v_kSvTd+kN3w5vw@mail.gmail.com>
From: Mirza Krak <mirza@mkrak.org>
Date: Mon, 2 Apr 2018 22:03:07 +0200
X-Gmail-Original-Message-ID: <CALw8SCUEzZZwjcoJYccQM8nm1Ke2h04Ku93VszNkzR29414r4w@mail.gmail.com>
Message-ID: <CALw8SCUEzZZwjcoJYccQM8nm1Ke2h04Ku93VszNkzR29414r4w@mail.gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Custom image type and CONVERSION_CMD images softlink problem
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
X-List-Received-Date: Mon, 02 Apr 2018 20:03:10 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On 2 April 2018 at 21:29, Mirza Krak <mirza@mkrak.org> wrote:
> On 29 March 2018 at 11:20, Mirza Krak <mirza@mkrak.org> wrote:
>> Hi.
>>
>> I am working with a project that has a custom image type, "sdimg". The
>> image works fine but it is when I try to apply CONVERSION_CMDs that I
>> see some interesting things.
>>
>> The image output is:
>>
>>      ${IMGDEPLOYDIR}/${IMAGE_NAME}.$suffix
>>
>> There is also a soft-link:
>>
>>     ln -sfn "${IMAGE_NAME}.$suffix"
>> "${DEPLOY_DIR_IMAGE}/${IMAGE_BASENAME}-${MACHINE}.$suffix"
>>
>> Now the interesting part comes when I try this:
>>
>>      IMAGE_FSTYPES +=3D "sdimg.gz"
>>
>> This results in a empty gz file, but I already know why and that is
>> because the "normal" image does not contain IMAGE_NAME_SUFFIX in the
>> output name, on which the CONVERSION_CMDs rely on [1].
>>
>> So instead of changing the image name I was hoping that this should
>> work (default is ".rootfs" in image_types.bbclass):
>>
>>     IMAGE_NAME_SUFFIX_sdimg =3D ""

Some addition information.

It seems if I if I do this:

   IMAGE_NAME_SUFFIX_sdimg =3D ""
   do_image_sdimg[imgsuffix] =3D ""

Then all steps are completed as expected (gz created and symlink is correct=
)
--=20
Med V=C3=A4nliga H=C3=A4lsningar / Best Regards

Mirza Krak
email: mirza@mkrak.org
web: http://mkrak.org

