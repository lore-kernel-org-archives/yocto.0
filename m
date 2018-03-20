Return-Path: <alex.kiernan@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DF661E00CDC; Tue, 20 Mar 2018 07:04:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (alex.kiernan[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.217.180 listed in list.dnswl.org]
Received: from mail-ua0-f180.google.com (mail-ua0-f180.google.com
	[209.85.217.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2F9E1E00873
	for <yocto@yoctoproject.org>; Tue, 20 Mar 2018 07:04:52 -0700 (PDT)
Received: by mail-ua0-f180.google.com with SMTP id f6so1087135ual.0
	for <yocto@yoctoproject.org>; Tue, 20 Mar 2018 07:04:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=J7QZJL+LIdoTOYzqMMQBzOYsscY3RurBRFepOwEGtiE=;
	b=Yr9CQUqUMp1Y0KkYYZ/eKA9SxzyFeMfWJ0CjLIA8F96h3ifXJBzvUbl1aS2afI84DY
	V6CoyzMLZy5cazdAwXeDzlVg9/fCD6Js9x24KG9q6h1m0NLIvHBDmRsvxIu6kYLrO1sT
	KtmWobCq2xmj7uBEQ6mhaoBZpd/x5CR+oNxdZtOMGMSzkJz22bhVuYQECPaJjJ4eWOvn
	cki8sR79Rbwd97Lv5J6NKhhyyig/9iazewkVeBxthzDQLVauI8Hv4404zpGSkVJnBl0B
	ZEfqKkFoNbvSNZFT4vCXND0I6A6sA0eej7jvJa+QFJ5i5TJUesAEFGfVie3rHxmTqQgS
	x7fA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=J7QZJL+LIdoTOYzqMMQBzOYsscY3RurBRFepOwEGtiE=;
	b=ocKIW5gUBMkzCo0zfmU5N9+6e4E/EjhGXzaw9IO6sfyIop7kkn+/FKdD583Oa58/a3
	9kLe9/57J5Ge5YLz1Wf1Vul7oudy5sVNL5wfkEJ7BaRVLwoEtB2CjQ+gZcPc0JNJZka3
	3robvk+gUH6xXvmNC5Wtz/qMIjS+fPGcdjpJgbFL0Kf3fjivvFwH9RnDyVUkrtrrbyaM
	Yna6dmRaQPuOGK8G7up8YDRUePdTXVo5NmOaK3hfAyTue02PY+7EFKZItsXcyPPsHuei
	jOgnd2WycxE1cQ9CuDJxM7emP8MjKBSPrvE5nVgsUZ8pYYLLVY93TpyKsN3KcEpJweA6
	2OpQ==
X-Gm-Message-State: AElRT7F3fJezpExS6krJwBzHWZk+gO7nKOx9NkUsRcmN2UvptvTV/E+y
	VQt7v5H6Odr244bBZrQOFM+6FiJkOKCK1rTtLcY=
X-Google-Smtp-Source: AG47ELs02oHtHqYop3RzBCtHycqkdW+u5MrsQlViF6lR8QvdJjLEq1kX0gP4ABu15V/Oci93PJ9642eNV7ljJJ3tCsc=
X-Received: by 10.176.9.223 with SMTP id e31mr2053063uah.175.1521554690893;
	Tue, 20 Mar 2018 07:04:50 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.176.74.219 with HTTP; Tue, 20 Mar 2018 07:04:50 -0700 (PDT)
In-Reply-To: <CAC+thW32K_i4ueR_YpsN3mZ-eMRZ5hSCxj5ZDpqq_gYLL4XFyg@mail.gmail.com>
References: <CAC+thW32K_i4ueR_YpsN3mZ-eMRZ5hSCxj5ZDpqq_gYLL4XFyg@mail.gmail.com>
From: Alex Kiernan <alex.kiernan@gmail.com>
Date: Tue, 20 Mar 2018 14:04:50 +0000
Message-ID: <CAO5Uq5RHgHOv9eAXrb9-G_5AEPiRb+6Wv3QabO+ft2Tkkjpf1Q@mail.gmail.com>
To: Andrea Galbusera <gizero@gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: use of variables in wic files
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
X-List-Received-Date: Tue, 20 Mar 2018 14:04:54 -0000
Content-Type: text/plain; charset="UTF-8"

On Tue, Mar 20, 2018 at 1:24 PM, Andrea Galbusera <gizero@gmail.com> wrote:
> Hi,
>
> Is there any way to reference bitbake variable within the wic file
> syntax? Got to this question after a wic file of mine recently broke
> due to a u-boot artifact changing its name after an upstream update of
> the u-boot recipe. The wic had the artifact's name hardcoded as a
> parameter to the rawcopy plugin. Could I have been referencing the
> u-boot artifact via UBOOT_BINARY variable instead?

Use a wic.in file?

http://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/meta/classes/image_types_wic.bbclass#n83

There's an example in the Intel RefKit:

https://github.com/intel/intel-iot-refkit/blob/master/meta-refkit-core/wic/refkit-directdisk.wks.in

-- 
Alex Kiernan

