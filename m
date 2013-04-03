Return-Path: <ross.burton@intel.com>
Received: from mail-vc0-f177.google.com (mail-vc0-f177.google.com
	[209.85.220.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9101CE013AC
	for <yocto@yoctoproject.org>; Wed,  3 Apr 2013 03:27:11 -0700 (PDT)
Received: by mail-vc0-f177.google.com with SMTP id ia10so1344538vcb.36
	for <yocto@yoctoproject.org>; Wed, 03 Apr 2013 03:27:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-received:mime-version:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type:content-transfer-encoding
	:x-gm-message-state;
	bh=tUZlw9Uzl2tWXfgBb0PqaxtG27DppgN8913yfeCWtG4=;
	b=HsDe4G4VXQ9//DaZtNo434E7zMITaF6wpImbTVw9B8JnnbTzauYBF4yYlFwcAw6JlY
	A/czDiKAEjfY2y9vWk7hpWiQEMu0XddFRs73l8sirrC/kEcj+GWukDuY7l2cFU4yD6j2
	+eQ6xpCRUXDUGXJyowcQ0K06BL8yPgmO5JqB1xHFem/OZsc1cp9qbEThkm5RwBKul3eF
	UUM/EhrzC6nZ+GB+EmKyL6tbXqzgALMaUfeH3mRcFsQjVCGtd1oxrVysonul/TTGE52A
	IrkmMtlNrWKVFbXA9IRDRT42hBIRfj0OBb7aO7VW8Eblp3opAH1/GFafJEcEqfOW7w82
	qubg==
X-Received: by 10.220.39.69 with SMTP id f5mr705666vce.45.1364984830733; Wed,
	03 Apr 2013 03:27:10 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.58.134.74 with HTTP; Wed, 3 Apr 2013 03:26:49 -0700 (PDT)
In-Reply-To: <20130328142134.GA94584@gmail.com>
References: <20130328142134.GA94584@gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 3 Apr 2013 11:26:49 +0100
Message-ID: <CAJTo0LaD+6h3029fjTME9SjCkShkTsVU0rwBiaLJSB5FCD7wVQ@mail.gmail.com>
To: =?UTF-8?B?RXJlbiBUw7xya2F5?= <eren@hambedded.org>
X-Gm-Message-State: ALoCoQk2S9QLyZuSDR0vGO0GydI682JdS7cBSXkvtcMbQO7psSv3sAYzZqumHXUH1/h2THyDzouO
Cc: Yocto Discussion List <yocto@yoctoproject.org>
Subject: Re: OE/Yocto Talk in Free Software and Linux Days in Turkey
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
X-List-Received-Date: Wed, 03 Apr 2013 10:27:11 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Eren,

On 28 March 2013 14:21, Eren T=C3=BCrkay <eren@hambedded.org> wrote:
> I haven't prepared slides and I have one week until the event.  I would
> really appreciate a previous seminar materials and slides. I would be
> grateful if we can discuss further on items in detail (e.g: what to
> explain). If you were to give a talk about OE, what would you explain?
> :)

I've done two presentations about Yocto from a high-level point of
view, their sources are in git at
http://git.yoctoproject.org/cgit/cgit.cgi/yocto-docs/tree/presentations
(the .pin files are the source).  It's a bit late (I've been away for
the weekend) but there might be something useful for you in there.

Ross

