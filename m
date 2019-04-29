Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B12F1E00A84; Mon, 29 Apr 2019 03:02:00 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.49 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-io1-f49.google.com (mail-io1-f49.google.com
	[209.85.166.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 122D3E0053F
	for <yocto@yoctoproject.org>; Mon, 29 Apr 2019 03:01:58 -0700 (PDT)
Received: by mail-io1-f49.google.com with SMTP id v9so8374834iol.10
	for <yocto@yoctoproject.org>; Mon, 29 Apr 2019 03:01:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=iybFSrs+HnPEXnet67eU7jZTZbwZw7n1dNCAfnxw+5I=;
	b=q0kcympCUfTmbEi+gRU8rhiJb/cMMk6QbLhGgA3onrmUqEgGrbhVyEANZUeFzF2nXM
	6tKxTQD3OfNu8AYK9v3pgh0EkqAkx/bmUSNR266hdAeJ4XTfHU8UfpqP3fQECcIjdu8L
	I0gtQ5K6lE5wT1Lv6p9W98tP1MZBbrZrOv/VUqLwujAVY9KcMY3fe38x0xZM67dVuuK8
	3ZbNn9bUNDOtOuSZKg+eQBPvEu/iro11XSthRmKrMRVQlzWn1HvPwzhd+0cOjW12MFQv
	p46tWKbgR7hR4bn1WhZyKkWmupqZlRcg13svm0CX2tyGFtUod69qFsjReLSr02QrzphY
	A0/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=iybFSrs+HnPEXnet67eU7jZTZbwZw7n1dNCAfnxw+5I=;
	b=JXV3yz/3Hiql23yZo42SOr/yqugTXkrLqlZq9d/THwNhSOIaJTdwJ73WKXlvMprrV2
	gD4UBZN9IVqYxnxWwbeMCPAJqwmMUDagX3GgFpwJgR7JKfSujowxXKdXbZmd/OcrUEMZ
	h6wCSa5lbxWnhcDqS90Rn284QVylCX8eS8q8HZUEiHtRNsvc0n07oGXHX87VpyagVDkN
	6TKH7/jOP62/TpsvqcdIQ4hn///Uoj756T8IpZINTEofb294pmi1rU++QyWYgwFOIPxb
	SB8q2XYbvP+oK4IYfNbCuMCoNyhR+dFZkxKKcmoeHWxYFtF2i4xZgpcKlTeyI/ucO9An
	JPsg==
X-Gm-Message-State: APjAAAX0EVkpiU/w/zFiaJwcysvXqM30QUryP0w9D9Nfdm4S82fz+qVV
	6qmXms5qmJHN0/uR9jBnHGa24yHxH+XNe6E9v3iE71MhxIE=
X-Google-Smtp-Source: APXvYqzYHOnRPM8u/r1SO06m3QkdN76OMkCg0Ra6xsh1mmmrHBOWkSJCwHb88a60dqwqzOBiyTXRjF4rJnHK5Ua928I=
X-Received: by 2002:a05:6602:11a:: with SMTP id
	s26mr11706225iot.201.1556532118566; 
	Mon, 29 Apr 2019 03:01:58 -0700 (PDT)
MIME-Version: 1.0
References: <CAK4Yt2kHbDxA0Z91kxGOjw10Tc4M3zEkmxeizV3+dLwdutGO3Q@mail.gmail.com>
In-Reply-To: <CAK4Yt2kHbDxA0Z91kxGOjw10Tc4M3zEkmxeizV3+dLwdutGO3Q@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 29 Apr 2019 11:01:47 +0100
Message-ID: <CAJTo0LaCDCksfge=H=ppv2nAcdAKF-wiQ5ow9Oa5pX56cYZVHQ@mail.gmail.com>
To: Zolee K <zoleelikesdebian@gmail.com>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: include own script - custon location
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
X-List-Received-Date: Mon, 29 Apr 2019 10:02:00 -0000
Content-Type: text/plain; charset="UTF-8"

On Mon, 29 Apr 2019 at 10:48, Zolee K <zoleelikesdebian@gmail.com> wrote:

> I guess something is wrong with the do-install function, I thought it would put the file in the image, but it doesn't. Please help me out on this.

Bitbake is literally telling you want to do:

> Please set FILES such that these items are packaged.

FILES_${PN} += "/usr/local/www"

Ross

