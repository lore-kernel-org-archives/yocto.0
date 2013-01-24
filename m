Return-Path: <ross.burton@intel.com>
Received: from fmsmga102.fm.intel.com (mga10.intel.com [192.55.52.92])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 45106E0147F
	for <yocto@yoctoproject.org>; Thu, 24 Jan 2013 05:54:57 -0800 (PST)
Received: from mail-gg0-f198.google.com ([209.85.161.198])
	by mga11.intel.com with ESMTP/TLS/RC4-SHA; 24 Jan 2013 05:54:56 -0800
Received: by mail-gg0-f198.google.com with SMTP id a5so5897479ggn.1
	for <yocto@yoctoproject.org>; Thu, 24 Jan 2013 05:54:54 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-received:x-received:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type:x-gm-message-state;
	bh=ByO/WcCwla63GlHFDuJaqZd+4CgNB7zBbjTXNwSPbz0=;
	b=EJr2qvHE5g880cnTcLtoxmADbliduDCdZDjMuTUh3l+IY0NmPInt+/XB7iRS1YhfXG
	94cdC7ItRYjTEo9h4BsyzZhTPNDjQXdWtatCbVWM1lbFFpR/K23/YRpHVYOkaN3kmoS/
	Z86fzNEXqex9F5BAflGfDr7MEtM0jPyTLjf3oF6M2RHlBTO1Odq5sqnXgpfVNWKc7C2M
	5ZJq3Hkn01bPIza9TSjQ7HvEV2VU2njZ+gvsREUDzNwowl/rwcAQogMP+gX9sH4nrM/R
	P/DU/XjtA82+acXttBXKPysFh74SxDp/OjM7k9eFqEzWn+QFM7jdGSTI1puoWNFa8Ww1
	Gq8g==
X-Received: by 10.52.72.137 with SMTP id d9mr1608639vdv.105.1359035694560;
	Thu, 24 Jan 2013 05:54:54 -0800 (PST)
X-Received: by 10.52.72.137 with SMTP id d9mr1608630vdv.105.1359035694417;
	Thu, 24 Jan 2013 05:54:54 -0800 (PST)
MIME-Version: 1.0
Received: by 10.58.151.207 with HTTP; Thu, 24 Jan 2013 05:54:34 -0800 (PST)
In-Reply-To: <51012AE1.7060905@balister.org>
References: <985E5BBDA0968D48ABDF343456A521B3F1300F@IRSMSX102.ger.corp.intel.com>
	<CAJTo0Lbjvedo-1YPQmM2uEv_44aUh9eoo45BCpXg6U=rH+f0mw@mail.gmail.com>
	<51012AE1.7060905@balister.org>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 24 Jan 2013 13:54:34 +0000
Message-ID: <CAJTo0LbtvKV3V5sKTbZ5j9GDu5xFfLgVicd6o74aW2NT0OArKw@mail.gmail.com>
To: Philip Balister <philip@balister.org>
X-Gm-Message-State: ALoCoQmckS2GEiuS3+X1xUbKQnKqJ8zY9Hqc8zMmTk25xdGvklCWfn101laVtMfempeWlrTJSV7mzJi4yPQ7KqGocyiJaLArG/xhbM0CpqI+1n2y2uwmWpgSBRYLsi5RRyCQrgHH2ouHtQ8Bk8dh/+O8/yULpdTGDQ==
Cc: yocto@yoctoproject.org, OE-core <openembedded-core@lists.openembedded.org>
Subject: Re: Meta-web-kiosk Layer
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
X-List-Received-Date: Thu, 24 Jan 2013 13:54:57 -0000
Content-Type: text/plain; charset=UTF-8

On 24 January 2013 12:36, Philip Balister <philip@balister.org> wrote:
> On 01/24/2013 07:12 AM, Burton, Ross wrote:
>> On 24 January 2013 12:03, Ciobanu, Emilia Maria Silvia
>> <emilia.maria.silvia.ciobanu@intel.com> wrote:
>>> I've created a new layer that can be used for kiosk devices.
>>> You can check it out at:
>>>     http://git.yoctoproject.org/cgit/cgit.cgi/meta-web-kiosk/
>>
>> Excellent, good to see it not hidden away!
>
> It is hidden until it appears on the Layer index :)
>
> http://www.openembedded.org/wiki/LayerIndex
>
> Please add it there.

Yes, it should be on the layer index.  Emelia, can you update the wiki?

Ross

