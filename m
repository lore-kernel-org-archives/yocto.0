Return-Path: <chgans@googlemail.com>
Received: from mail-pa0-f44.google.com (mail-pa0-f44.google.com
	[209.85.220.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 89470E01363
	for <yocto@yoctoproject.org>; Wed, 24 Jul 2013 13:48:49 -0700 (PDT)
Received: by mail-pa0-f44.google.com with SMTP id jh10so1109365pab.31
	for <yocto@yoctoproject.org>; Wed, 24 Jul 2013 13:48:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=googlemail.com; s=20120113;
	h=sender:message-id:date:from:user-agent:mime-version:to:subject
	:references:in-reply-to:content-type:content-transfer-encoding;
	bh=W1hCwfWY8CY4458KoXwhzu51IIdxiu6yFWGu8Hl5bP4=;
	b=IysT/IVVaWJM6G8rPMKMcQbfry70BL2Squ9BGQ1xkvn8qkaKRLj7fEN9jwWcRLxr6H
	LYPG9uMf4Pgs11lMccD+Nvjr306V6KWhjr3mh4hJsBdaldW5b1drhQUIJPhtGug7ILxr
	DaILpLkwgSlnW2PeDW47ik3C8zvlxigGRDhQbF4umMbq0y6zYT6iU3xQXO1X7KO0UlrW
	9whlCYjOXLyGuJB1VIEOW4uGY6lotGfOjym5YGvVSSejYnkOtrp89nO6ACjPY4mT6wl5
	ZUvPblFN2g3+r2F+V00XH3FcE6vQ6OMxU8+TP1XEN8SuaJGkuChrryhQK3VagQHHRt29
	aDMA==
X-Received: by 10.66.186.79 with SMTP id fi15mr44297672pac.160.1374698929437; 
	Wed, 24 Jul 2013 13:48:49 -0700 (PDT)
Received: from krys-red.trunet.local ([210.48.94.225])
	by mx.google.com with ESMTPSA id
	ep4sm49686706pbd.35.2013.07.24.13.48.47 for <yocto@yoctoproject.org>
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Wed, 24 Jul 2013 13:48:48 -0700 (PDT)
Sender: Chris Gagneraud <chgans@googlemail.com>
Message-ID: <51F03DAD.6080400@gna.org>
Date: Thu, 25 Jul 2013 08:48:45 +1200
From: Christian Gagneraud <chgans@gna.org>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:17.0) Gecko/20130623 Thunderbird/17.0.7
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <CAOMwXhMEn64Yw7GQbUKccg8_wSUaRpEDALAHwGj7BEWpiK+rsQ@mail.gmail.com>
In-Reply-To: <CAOMwXhMEn64Yw7GQbUKccg8_wSUaRpEDALAHwGj7BEWpiK+rsQ@mail.gmail.com>
Subject: Re: External toolchain (sourcery)
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
X-List-Received-Date: Wed, 24 Jul 2013 20:48:49 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 25/07/13 02:49, Laszlo Papp wrote:
> Hi,
>
> is this officially supported by the Yocto project? I would not like to
> use Yocto for my own purposes if it is something unsupported, and I
> would need to put a significant investment into to it to make the
> releases buildable, et cetera.

FYI, The arago project uses an external Linaro toolchain [1]

Chris

[1] http://arago-project.org/wiki/index.php/Setting_Up_Build_Environment

>
> Many thanks,
> Laszlo
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>


