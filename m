Return-Path: <raj.khem@gmail.com>
Received: from mail-ey0-f176.google.com (mail-ey0-f176.google.com
	[209.85.215.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 21FF0E01454
	for <yocto@yoctoproject.org>; Sat,  4 Aug 2012 12:47:41 -0700 (PDT)
Received: by eaab14 with SMTP id b14so521577eaa.35
	for <yocto@yoctoproject.org>; Sat, 04 Aug 2012 12:47:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=91VmP+M1Qnby6K7QetqnjkVa+RSBcgdtr2TOW+CqH7c=;
	b=0hv0PlRVeMrvSwwRYJn3fJ+mhfjc/HVIiCd4YwD/Ti+UcpRcTddyy+W8ayWZXMFEb1
	RSt5Vyt5zCilBQQCQhaYO3v3YXJATQwgOV3ozjUn4ZbA2/hr0sQh3xiBvKLlnG8/DSzV
	GRPHL2CZJ27zPu2DS+bjBgyVuU8CUCn+MJVWmloVzsGdS8oLze34QxNLO1SgYi8jGWvh
	UO7NJW8FO+eup4a/p0kxexF0/rMNpI1JeVg1Ck3eMB71Jp8b1FqQka0miRE5Gh1VxHGZ
	rJ1rAXCknIKcTH3vUt1miVD2YV4+cGzzV75DkWk1J14+0e6Wxq+CoHADxEB2+gTDMixQ
	5i0w==
Received: by 10.14.173.71 with SMTP id u47mr7104538eel.22.1344109660821; Sat,
	04 Aug 2012 12:47:40 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.14.97.141 with HTTP; Sat, 4 Aug 2012 12:47:10 -0700 (PDT)
In-Reply-To: <EFFDC90A-1BC0-4513-ADC8-A39F03309AD5@gmail.com>
References: <EFFDC90A-1BC0-4513-ADC8-A39F03309AD5@gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Sat, 4 Aug 2012 12:47:10 -0700
Message-ID: <CAMKF1sr3K4PcWCiVmhp6KerKmZgtpf1Q6HDQ278w3O3_0CBiXw@mail.gmail.com>
To: Elvis Dowson <elvis.dowson@gmail.com>
Cc: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Subject: Re: Adding gcc-4.5.4 release back into oe-core
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Sat, 04 Aug 2012 19:47:42 -0000
Content-Type: text/plain; charset=UTF-8

On Sat, Aug 4, 2012 at 12:19 PM, Elvis Dowson <elvis.dowson@gmail.com> wrote:
> Hi Khem,
>                   Do you think it makes sense to add gcc-4.5.4 back into oe-core, if it turns out that gcc-4.7.2 is causing a lot of issues for some targets?

NO

