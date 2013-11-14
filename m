Return-Path: <hans.beckerus@gmail.com>
Received: from mail-oa0-f48.google.com (mail-oa0-f48.google.com
	[209.85.219.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D7C21E017E5
	for <yocto@yoctoproject.org>; Thu, 14 Nov 2013 07:19:35 -0800 (PST)
Received: by mail-oa0-f48.google.com with SMTP id n16so2340821oag.7
	for <yocto@yoctoproject.org>; Thu, 14 Nov 2013 07:19:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type:content-transfer-encoding;
	bh=hmH1r74M2Arr3H4bpj0R7drUcCxzTbFSk80m2PljP0A=;
	b=azcTPiWIwQx5oSlDy+BLM3WCWC0d94hQ8WvHrr0IBKlCXtJSuX1A1Nyx7qVHBQuR4F
	klCAsPOvp3VE9kVJlOsjjU7+YGJaklaTmM/fnpJjkIQpdKPLcjhe0iic4zKPmQ+2JRhx
	9n6EZKvFK2aBcz3KkDfTDwT692wC1ZyKxwPIFJF7BWk1afxBdplPM3rA1CPkbKPp69go
	txqNw2GvoBBhREROT9Q4x7HVQJIdQ/fj2JIQT3Sr2HeoV41/6pimih+yEzdjWfWbGWM8
	ZHCkJDcD+XjM/MWn7VkfilQdFiAkynnh0VKxstIMd/wnQNT6fu1/+jjVoltY+rsjbEXj
	1Vvg==
MIME-Version: 1.0
X-Received: by 10.60.56.42 with SMTP id x10mr1833727oep.95.1384442374561; Thu,
	14 Nov 2013 07:19:34 -0800 (PST)
Received: by 10.182.228.81 with HTTP; Thu, 14 Nov 2013 07:19:34 -0800 (PST)
In-Reply-To: <CAFyqS9rjCskZBJypK9AO-f5GLDEnkSFfhsfrMK8c5cKYdp_4nQ@mail.gmail.com>
References: <CAFyqS9rjCskZBJypK9AO-f5GLDEnkSFfhsfrMK8c5cKYdp_4nQ@mail.gmail.com>
Date: Thu, 14 Nov 2013 16:19:34 +0100
Message-ID: <CAFyqS9pY0S_Qs+GF9k-w5KCKhhgG+CGK5Y95m5d42-BYAKUOdA@mail.gmail.com>
From: =?ISO-8859-1?Q?Hans_Beck=E9rus?= <hans.beckerus@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: /var/log/dmesg: should it not be created?
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
X-List-Received-Date: Thu, 14 Nov 2013 15:19:36 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Wed, Nov 13, 2013 at 5:08 PM, Hans Beck=E9rus <hans.beckerus@gmail.com> =
wrote:
> Hi. I can see that in ./recipes-core/initscripts/initscripts_1.0.bb,
> the dmesg.sh script is installed in /etc/init.d. But I can not see
> that it is being added to any run-levels, not even single-user mode.
> Is there some reason for only installing the init script but not
> actually activating it? Not that I really need it, but some
> clarification to why it works as it does would be appreciated :)
>
No one? I think it is obvious that initscripts_1.0.bb is missing
adding dmesg.sh to any run-level.
But I do not wish to take this further unless I understand why it was
left out; deliberately or by mistake.

> Thanks.
> Hans

