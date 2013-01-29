Return-Path: <twoerner@gmail.com>
Received: from mail-we0-f182.google.com (mail-we0-f182.google.com
	[74.125.82.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5A03AE0072F
	for <yocto@yoctoproject.org>; Tue, 29 Jan 2013 13:06:03 -0800 (PST)
Received: by mail-we0-f182.google.com with SMTP id t57so664843wey.41
	for <yocto@yoctoproject.org>; Tue, 29 Jan 2013 13:06:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:x-received:in-reply-to:references:date:message-id
	:subject:from:to:cc:content-type;
	bh=b48fg41rbrsu9wncX5Ytq7OvaQd0QSdJUXmMZScEpxc=;
	b=vo06pM4pLnaseivll3/lNDuw3RwVgKzP+qiFifLEzk63T35WB5Do8BmRlgJEQPYsBd
	jGxKE3B0qYca7qgzSKTTzL4uYbSUl+FbmqN/+4e1VsMot2WasxtN4Kz/sEquB1zxGly4
	lYjXAL74NhSEreRj3jmkqrwcoaKWEQXaUZhBD4sjY/I11WXc4I/XCr21/uHq/tWYC1U3
	eELPUKKqzbqdzL+7L4+J1wxzttxmJ+4nXBpSNTk9uU4OLYwV/lYnBTiWbDvLWH800E7F
	B+uE7usmwnbUpNZ8GgxcHdISE23vxqldhf+3I23oHX4ULgv//0C8keoLu+yxvIF4glcZ
	pLcQ==
MIME-Version: 1.0
X-Received: by 10.194.19.170 with SMTP id g10mr4830064wje.56.1359493561669;
	Tue, 29 Jan 2013 13:06:01 -0800 (PST)
Received: by 10.194.166.74 with HTTP; Tue, 29 Jan 2013 13:06:01 -0800 (PST)
In-Reply-To: <41DEA4B02DBDEF40A0F3B6D0DDB1237957D28FAF@ORSMSX101.amr.corp.intel.com>
References: <41DEA4B02DBDEF40A0F3B6D0DDB1237957D28FAF@ORSMSX101.amr.corp.intel.com>
Date: Tue, 29 Jan 2013 16:06:01 -0500
Message-ID: <CAHUNapTgsRnFLnZ6DCGix5ZGSJ4O7Kuqo_jLmepe-F3vhe1NgA@mail.gmail.com>
From: Trevor Woerner <twoerner@gmail.com>
To: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: BB_DANGLINGAPPENDS_WARNONLY
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
X-List-Received-Date: Tue, 29 Jan 2013 21:06:03 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Tue, Jan 29, 2013 at 3:58 PM, Rifenbark, Scott M
<scott.m.rifenbark@intel.com> wrote:
> Can anyone out there offer more information on this variable?  Wondering whether this should be documented in the glossary.

By default bitbake will throw an error if there exists a *.bbappend
recipe for which there is no corresponding *.bb recipe.

Setting BB_DANGLINGAPPENDS_WARNONLY will change this to a warning instead.

It's usually a sign the base recipe's version has been bumped and you
now need to update your bbappend to match or the base recipe has been
removed.

