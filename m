Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3C320E00CA6; Wed, 23 Aug 2017 11:56:16 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.83.43 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f43.google.com (mail-pg0-f43.google.com [74.125.83.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BD44BE00C97
	for <yocto@yoctoproject.org>; Wed, 23 Aug 2017 11:56:15 -0700 (PDT)
Received: by mail-pg0-f43.google.com with SMTP id 83so3641743pgb.3
	for <yocto@yoctoproject.org>; Wed, 23 Aug 2017 11:56:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-language:content-transfer-encoding;
	bh=GJgYuokBYPRSWRGx3hbXb9GGm7hOPOeGOZ6iJo5lAbE=;
	b=De0fR5q4luyTE7SEqac8ei3RvTltOZrV2bGQtYpvGReN2+vHJnHdGzVPYCyZA22krh
	tywqXsidD7N37CSCW7Lh6HmoTK147gbLzHOzd6vNAE3YvxiiMiyYiAMGEJgMtwmpRMxU
	e+JOdjGmaFebub8w6D9l/BIsO0NotgMG0fsBC5+SZ8jUu91Z4ejGHz3EBnDp0GEfKRPn
	ked6+hHe2jiUTO52K3x86gXEa6ni8vJ25s/2IQ+GD0SgykIbzQ0S2XqzVa9ytVrjrjvv
	UZlfuOIykFpSUWMgqjjrOkegt1dWCAPiMsCGwXh5tjeUg9to52IoYj3lh4ieq7uiX3BD
	m7Hw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-language
	:content-transfer-encoding;
	bh=GJgYuokBYPRSWRGx3hbXb9GGm7hOPOeGOZ6iJo5lAbE=;
	b=cUGDf891+8+iaiiO6CS5EqJLhmX1pQn174pOBcGdtIZUGIy7M7+hSEZS7CyinaAJXD
	/A5CGES112ucUeZxa3/8WTqfLsHypKdtgHrfxMjP7I5PsRhkv3zZl5L5BKWclZS1ak4G
	r7fGfmhOz6uA/ushsMKiSdrDYf7GKAnKxAoynenezihWPEYKbMaLFu+Elv1IcNRcXlRD
	ZzNpuX64LVuIq/NlTHU5GVxUCsSEZ817N8p0kYjDuoADbOzd45jWBfYAUOBLinMxJFKe
	DkSdSmp2mNDh3qpnB+h9FW4xOHDe2Zhfo24HGOFrC7DKxUP7j19SldHnjCDUQskq7Doe
	q8VA==
X-Gm-Message-State: AHYfb5gniJiLdlHTgx6UAZxaF/C+36MrwPdUGBKanxe+Wrg6QKz73E0l
	WaWnEVGGYh6Juz5Eb6E=
X-Received: by 10.98.24.71 with SMTP id 68mr2826083pfy.279.1503514575085;
	Wed, 23 Aug 2017 11:56:15 -0700 (PDT)
Received: from ?IPv6:2601:647:4c00:6cf9:1d5a:396a:8869:87e0?
	([2601:647:4c00:6cf9:1d5a:396a:8869:87e0])
	by smtp.gmail.com with ESMTPSA id
	h14sm5789988pgn.34.2017.08.23.11.56.13
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 23 Aug 2017 11:56:14 -0700 (PDT)
To: Stefano Pagnottelli <stefano.pagnottelli@gmail.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <CAJJpNC2h4U9iUXTAK1PvHJ99fpmqGdD8MoEn3=HfnP=3Tsg5sw@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Message-ID: <a48d28db-9736-7291-e890-04966298ca5c@gmail.com>
Date: Wed, 23 Aug 2017 11:56:12 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.12; rv:56.0)
	Gecko/20100101 Thunderbird/56.0
MIME-Version: 1.0
In-Reply-To: <CAJJpNC2h4U9iUXTAK1PvHJ99fpmqGdD8MoEn3=HfnP=3Tsg5sw@mail.gmail.com>
Subject: Re: RDEPENDS dependency problem
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
X-List-Received-Date: Wed, 23 Aug 2017 18:56:16 -0000
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit

On 8/23/17 1:12 AM, Stefano Pagnottelli wrote:
> Hi to all,
> 
> I'm trying to build this layer:
> (https://github.com/bachp/meta-homeassistant) using the yocto pyro on a
> raspberry pi 3 target and the opkg package system.
> 
> Inside the recipe
> (https://github.com/bachp/meta-homeassistant/blob/master/recipes-homeassistant/homeassistant/python3-homeassistant_0.51.2.bb)
> there  are some RDEPENDS with strict equal
> dependencies (ex:python3-aiohttp (= 2.2.5)).
> 
> We I build the image with the opgk package system the system fail in the
> do_rootfs task because is not finding the package python3-aiohttp =
> 2.2.5.. If I understood correctly this happens because the build system
> si appending the recipe revision (PR variable) at end of package name
> and the results is  python3-aiohttp_2.2.5-r0 and not
> python3-aiohttp_2.2.5 as opkg is expecting. 

I dont think r0 is in play here. You can test it by changing dependency
check to look for  (= for 2.2.5-r0), I think it should still fail.

> 
> As workaround I changed all strict = with a >= and the build complete
> without errors. 

this is ok as long as the package can work with newer versions of this
package. I am not sure if thats the case, you might have to check with
authors intent for using = instead of >=

> 
> My question is: It's possible to  instruct the build system to ignore
> the recipe revision when it match the version of the package? Or in
> alternative it's possible to automatically detect the recipe revision of
> the package?
> 
> Thanks in advance
> Stefano
> …
> -- 
> 
> There are 10 types of people in this world, those who understand binary
> and those who dont
> 
> 


