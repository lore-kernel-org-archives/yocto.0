Return-Path: <ross.burton@intel.com>
Received: from fmsmga101.fm.intel.com (mga05.intel.com [192.55.52.89])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 772ABE006C3
	for <yocto@yoctoproject.org>; Mon,  3 Dec 2012 01:51:44 -0800 (PST)
Received: from mail-ie0-f200.google.com ([209.85.223.200])
	by mga01.intel.com with ESMTP/TLS/RC4-SHA; 03 Dec 2012 01:51:43 -0800
Received: by mail-ie0-f200.google.com with SMTP id k13so12135514iea.11
	for <yocto@yoctoproject.org>; Mon, 03 Dec 2012 01:51:43 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:x-gm-message-state;
	bh=pEIwF8wi4Cc78VWBMcBZ+Ep0vbp3RdscJQyFwGIK1z8=;
	b=FAZgCVC+6B7T6iWVGY0+BUFeBJ1pLh44ARIVwiw0mq8oRij2moq061N0GU8h44NbLW
	uDK8e5ltdT/RX+/b2fiw5I+h0r9zHrVgz9b9w0e2ry5W+vkhhcOPiB0KEou8faTTh6Th
	fKcS+IDhwsEj50xay7oTfLg6NFDx+RwV1tQAow0PQp3HmaKR7YXxuZzKvIR2ecEnY5A9
	Gwp3Dv+kus/rzMfV3mBgWkVWbF3ahzlURC5LMqMHGZkuwCZUiGWkAvSh1tVTAnY1qlSx
	TNEMK1z4qgrH0sPM+aazRK0VT9fewOSbLWpCE9FQU/BVKOTF+OtV9qGmeJo1KPdLpH+I
	oDoA==
Received: by 10.182.240.109 with SMTP id vz13mr3831662obc.81.1354528303033;
	Mon, 03 Dec 2012 01:51:43 -0800 (PST)
Received: by 10.182.240.109 with SMTP id vz13mr3831655obc.81.1354528302844;
	Mon, 03 Dec 2012 01:51:42 -0800 (PST)
MIME-Version: 1.0
Received: by 10.76.132.198 with HTTP; Mon, 3 Dec 2012 01:51:22 -0800 (PST)
In-Reply-To: <09515033-71CF-44CC-8FD5-CA51C85CF3E0@keylevel.com>
References: <09515033-71CF-44CC-8FD5-CA51C85CF3E0@keylevel.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 3 Dec 2012 09:51:22 +0000
Message-ID: <CAJTo0Lbox5b5u0re10VhrYghP1LZ7he8N2oFRULBy8+x+ua62g@mail.gmail.com>
To: Chris Tapp <opensource@keylevel.com>
X-Gm-Message-State: ALoCoQm0GvSb0r+/wglCuWsLrSUthNh6nGXuFbHotwsH3G06bVgnFD1UHACqx3C6GEztn8SgqT/yldHgQYrvvRB3AS7PIu0oBsEeJSq7aXlK0rsBsDPrIqOhnCvHyNqA0DwGHav2N/XBKSV42M9YmfeiunBK42TVNg==
Cc: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Subject: Re: Image libraries
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
X-List-Received-Date: Mon, 03 Dec 2012 09:51:44 -0000
Content-Type: text/plain; charset=UTF-8

On 1 December 2012 22:39, Chris Tapp <opensource@keylevel.com> wrote:
> Is there a recipe available for a library which can load image files into memory / GL textures?

Into memory, the lowest level would be libjpeg or libpng, but then
it's your responsibility to match the pixel formats.

If you're using GL and you don't have a higher level abstraction, you
might want to look at Cogl (GL specifics abstraction and sanity layer)
or Clutter (toolkit based on Cogl).  Both of these are in oe-core.

Ross

