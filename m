Return-Path: <rstreif@linuxfoundation.org>
Received: from mail-ie0-f176.google.com (mail-ie0-f176.google.com
	[209.85.223.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 71EEAE01471
	for <yocto@yoctoproject.org>; Thu,  4 Oct 2012 13:28:32 -0700 (PDT)
Received: by mail-ie0-f176.google.com with SMTP id k11so2388847iea.35
	for <yocto@yoctoproject.org>; Thu, 04 Oct 2012 13:28:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:date
	:x-google-sender-auth:message-id:subject:from:to:cc:content-type
	:x-gm-message-state;
	bh=BRYwLgFAwxIXGHHTlx6/AQU0apvdWPep/wv+teOnSkc=;
	b=K+jQ96OOXQCASr0v9NJny5SJmhdZNMeFCduUYI4kCwKMhRZBMqZ97LjEtViAhF73iW
	KWvQfFBM4SBVwHI2k6LAAapUa9F84Ql1V7/i+Xi48oEitmOoT/cPfOWVUsoo0HZuR+L9
	hPvgX12ukAUDZU1oiWEytwOXqJh7E7FbinZFQi0s9F2h+Z5Kwbobvu0bvrqqV0KMxZqS
	3rScmpnb8aes+Dq4//CLEJpR5xYnWiSqmQzebaz7xlroa3npsyLtzKxxg2SWR+vgmi4z
	lSK60uAv1lofNQM8Hhx/kWTiQoPlw4oUF7xhzBGQLWbUL0JLG8X12qdYUnO0FJn172jo
	V3Og==
MIME-Version: 1.0
Received: by 10.50.213.35 with SMTP id np3mr945901igc.22.1349382511903; Thu,
	04 Oct 2012 13:28:31 -0700 (PDT)
Sender: rstreif@linuxfoundation.org
Received: by 10.64.27.197 with HTTP; Thu, 4 Oct 2012 13:28:31 -0700 (PDT)
In-Reply-To: <CAMKF1srvz7NrDaVx3D1U-efD0QdcUYnN-i27pUM8kosVKdOQ-g@mail.gmail.com>
References: <CA+gsK-oEmJJHQo1BHYfr1CZS3KbjiG8piMV30EodDGOFrEpaLA@mail.gmail.com>
	<506CE7CF.6000500@linux.intel.com>
	<CA+gsK-r9-H853RFWkhSWORCC3i7zW+KT6Q6UquXa6Sph2--0aw@mail.gmail.com>
	<CAK18fxHT3qTTf_qMC7RiynTrPpJHVkkmw76PWV2qDKKFDi=2Qg@mail.gmail.com>
	<20121004082230.GB3005@jama.jama.net>
	<CA+gsK-qgQOEbBaoaqSkfOoX6zH14AcTspjFdEC2Y6QLURQEHEw@mail.gmail.com>
	<CAMKF1srvz7NrDaVx3D1U-efD0QdcUYnN-i27pUM8kosVKdOQ-g@mail.gmail.com>
Date: Thu, 4 Oct 2012 13:28:31 -0700
X-Google-Sender-Auth: RikKoX13ZjBSLMtLxPTmiVqwJ0k
Message-ID: <CA+gsK-qSFNdyLvjLewrCQNkSxFEyUo=vkd=Bf0cZzedE-qJ7UQ@mail.gmail.com>
From: Rudolf Streif <rudolf.streif@linux.com>
To: Khem Raj <raj.khem@gmail.com>
X-Gm-Message-State: ALoCoQlK4jil4heN/bZBiVRccVlGKshDa3wXafBcvTusAfUUtAgqU5v0yffC5uVXxO61z/XtP8zV
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [Poky] Baking core-image-minimal with Poky from Master fails with libffi dependency
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
X-List-Received-Date: Thu, 04 Oct 2012 20:28:32 -0000
Content-Type: multipart/alternative; boundary=14dae9340cf749c3c504cb41999e

--14dae9340cf749c3c504cb41999e
Content-Type: text/plain; charset=ISO-8859-1

>
> hmmm clearing sstate generally should not be needed. I wonder if there
> is something to fix here
> but now you have blown up you cache :)
>

Fair enough. Hindsight. I should have moved it. There will be a next
time....

--14dae9340cf749c3c504cb41999e
Content-Type: text/html; charset=ISO-8859-1

<br><div class="gmail_quote"><blockquote class="gmail_quote" style="margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div class="im">
<br>
</div>hmmm clearing sstate generally should not be needed. I wonder if there<br>
is something to fix here<br>
but now you have blown up you cache :)<br>
</blockquote></div><br><div>Fair enough. Hindsight. I should have moved it. There will be a next time....</div>

--14dae9340cf749c3c504cb41999e--
