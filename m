Return-Path: <ross.burton@intel.com>
Received: from mail-vb0-f41.google.com (mail-vb0-f41.google.com
	[209.85.212.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A8DA7E01489
	for <yocto@yoctoproject.org>; Fri, 24 May 2013 02:15:01 -0700 (PDT)
Received: by mail-vb0-f41.google.com with SMTP id p14so2874137vbm.14
	for <yocto@yoctoproject.org>; Fri, 24 May 2013 02:15:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:content-transfer-encoding:x-gm-message-state;
	bh=JvfY+8RzICECnQYBYzpLvpbJowkh8QfFUpHLViqDg94=;
	b=SWIXk/4nRdUxuZE3WWcvKqmLrmie0SBhbkd/DGiiyTZEZKACFMUtJqogrIwfdN+ceU
	TQuA89hXwGQ40QuMCV5iki5dERD8EUCIqAidwpfYruZaB91cV2yaVWlRTL0F4le1ixMX
	IVkcJbCplE+7335PyBhnsUhY17XhhgCoq/dUKcqLPz6wCquwFGcTOD7qN4b9AIMu7wcu
	HK7aPTVTaNnPsMtdLI4AKZSDvOKY274h5DKeqDt0iphWhF9ynKA9ogyvZ20EoCozDqXc
	kk+q7RbJHOCvUCO4ApGjThRx1YNdreso4wGYoT3zJOtDmQmewtOOuIPTXHyB8UDg0UGY
	Mdug==
X-Received: by 10.220.146.199 with SMTP id i7mr5492224vcv.42.1369386901009;
	Fri, 24 May 2013 02:15:01 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.220.98.7 with HTTP; Fri, 24 May 2013 02:14:40 -0700 (PDT)
In-Reply-To: <CAFyqS9oKKobdM334mq3=FyaQ+WYqKtSYxnG0Do4ENEYOYyCcbg@mail.gmail.com>
References: <CAFyqS9r0yUn_dNT0PH9WgFp2pyOs3M+bNdQ=YnPAa8u8fbkFzw@mail.gmail.com>
	<CAJTo0LYOqeHywd4zftCoccUpnvcB3kDA-TLtgjknkkAZh_Ec4Q@mail.gmail.com>
	<CAFyqS9oLLmdB6_qJzTuXhZ8MyhUctUXaMttSAm5LNm0RHtq-ww@mail.gmail.com>
	<CAJTo0Lbv6RmRN-dO_BRNmSRN49x5Pz8RqXOGf=kB5KcVz0MpyQ@mail.gmail.com>
	<CAFyqS9qtnGX03cD-1OmfiJEVkT0MhCuAW-=XPGRRcnCD9VorFQ@mail.gmail.com>
	<CAFyqS9oQmWmcZLBxYW=bYtsQMo70XzdWpP6vTme_BHkXSRtLyA@mail.gmail.com>
	<CAJTo0LaSR_nvvkbFtTwoDgd1xcYY5fN08yoFXe4Y15_0_h_OBA@mail.gmail.com>
	<CAFyqS9oKKobdM334mq3=FyaQ+WYqKtSYxnG0Do4ENEYOYyCcbg@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 24 May 2013 10:14:40 +0100
Message-ID: <CAJTo0LaMOzdcdnLVgy7yshn-KoiMx_b0Jk7MFBxgEXC_f1R=og@mail.gmail.com>
To: =?UTF-8?Q?Hans_Beck=C3=A9rus?= <hans.beckerus@gmail.com>
X-Gm-Message-State: ALoCoQl1MEXd99NM/ql0o8iB1BTLwnrK0jMQjHuQj5ON5uItNTmltZWamNLt+BMwrXgFdkMNHN3P
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: .rpm packaging weirdness of dynamic libraries
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
X-List-Received-Date: Fri, 24 May 2013 09:15:01 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On 23 May 2013 19:51, Hans Beck=C3=A9rus <hans.beckerus@gmail.com> wrote:
> However, I have completely changed path now ;) I think the root cause
> of this entire problem is that the package is constructed wrong. Since
> these .so files are modules, we need to tell libtool so it does not
> create the regular versioned lib file structure. What we want is a .so
> file and no links. Maybe then all of this is a no issue anymore?
>
> elinx_drv_la_LDFLAGS =3D -module -avoid-version -shared

Oh, if you've created modules and not libraries, then yes.  Use those
options and generally people put them in a subdirectory under libdir.

Ross

