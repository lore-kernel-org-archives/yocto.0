Return-Path: <rstreif@linuxfoundation.org>
Received: from mail-qa0-f41.google.com (mail-qa0-f41.google.com
	[209.85.216.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 760B9E002AB
	for <yocto@yoctoproject.org>; Thu, 23 Aug 2012 14:56:33 -0700 (PDT)
Received: by qafk30 with SMTP id k30so139152qaf.14
	for <yocto@yoctoproject.org>; Thu, 23 Aug 2012 14:56:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:date
	:x-google-sender-auth:message-id:subject:from:to:cc:content-type
	:x-gm-message-state;
	bh=GhBh/zcfXcoFnV6mwstdnMe+cElq/BLcVWzVLID4JLM=;
	b=iWDHKtEtmOxpvzgbF/OOp7OEjbW9bqk8VgbyKTj842eKHfuDg8LWUm2KvpZzct1xLx
	0Y56saSWDA3/vWkic9bI+y4wFZb0v3hv8FkjbhD5iGJCYh99MpGv6RC+KbgxsJfqNjSa
	a9zerf8DOMU/+YhINoyYLiFgj2f0Z2rjGwhA8WgadK5375boS8+YZ9C5ZI0Jlt/47Wxt
	fuLMt3MdxK4QVlw8zTfbiZY5vl75QYuEOy1evz4MaEKC8jHra3tkgMF0MxSNj0jHLb6w
	gSC7rlfH3pFuZNM3NNEoQv45ZRJ41e+i+gSZ34KTAGlXv492WK8Y99K1Gc3l8wNORcp0
	331Q==
MIME-Version: 1.0
Received: by 10.224.214.67 with SMTP id gz3mr5351287qab.70.1345758990346; Thu,
	23 Aug 2012 14:56:30 -0700 (PDT)
Sender: rstreif@linuxfoundation.org
Received: by 10.49.96.3 with HTTP; Thu, 23 Aug 2012 14:56:30 -0700 (PDT)
In-Reply-To: <1345754799.14369.59.camel@ted>
References: <CA+gsK-rG1i7A1CHgR+T7UevStRVQXku6ri6LK407hHzSqqLfUA@mail.gmail.com>
	<1345754799.14369.59.camel@ted>
Date: Thu, 23 Aug 2012 14:56:30 -0700
X-Google-Sender-Auth: DXZlvgOKRCEkA5WTkI6gdj3QFyo
Message-ID: <CA+gsK-oR6NdMbSjiE1w6X4wp2fN_REoaKVzvWarfdnGXgF8WGw@mail.gmail.com>
From: Rudolf Streif <rudolf.streif@linux.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
X-Gm-Message-State: ALoCoQlEwyaWnD+ajp+eBdAXzzAphwN/64XnSMk2nORrNhXlskcZ6esnhdJlZJtPNhrQNBBnPV/7
Cc: yocto@yoctoproject.org
Subject: Re: [ADT] Autotools: configure using --with-libtool-sysroot
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
X-List-Received-Date: Thu, 23 Aug 2012 21:56:33 -0000
Content-Type: multipart/alternative; boundary=20cf300fb31992a87304c7f5eeb2

--20cf300fb31992a87304c7f5eeb2
Content-Type: text/plain; charset=ISO-8859-1

Thanks, Richard.

> Which libtoolize script/binary is being used (try "which libtoolize")?

The one from the cross-toolchain:
$ which libtoolize
/opt/poky/1.2.1/sysroots/x86_64-pokysdk-linux/usr/bin/libtoolize

 > It probably works fine since your sample app isn't actually linking to
> anything. That could be the other reason actually, perhaps there you
> don't use libtool in your sample app?

Yes, GNU Hello World does not use libtool.

> It sounds like it is updating configure but not with the version of
> libtool that the ADT comes with. You did source the ADT environment
> script before running the above commands (assuming it does use libtool)?

I did source the environment before running the commands. And they seem to
do their work and return without any messages.

Are you saying that if the application does not use libtool then configure
will also throw that warning message?

Thanks,
Rudi

--20cf300fb31992a87304c7f5eeb2
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Thanks, Richard.<br><br><div>&gt; Which libtoolize script/binary is being u=
sed (try &quot;which libtoolize&quot;)?</div><div><br></div><div>The one fr=
om the cross-toolchain:</div><div><div>$ which libtoolize</div><div>/opt/po=
ky/1.2.1/sysroots/x86_64-pokysdk-linux/usr/bin/libtoolize</div>
<div class=3D"gmail_quote"><div><br></div><div>=A0&gt;=A0It probably works =
fine since your sample app isn&#39;t actually linking to</div><div>&gt; any=
thing. That could be the other reason actually, perhaps there you</div><div=
>&gt; don&#39;t use libtool in your sample app?</div>
<div><br></div><div>Yes, GNU Hello World does not use libtool.</div><div><b=
r></div><div>&gt; It sounds like it is updating configure but not with the =
version of</div><div>&gt; libtool that the ADT comes with. You did source t=
he ADT environment</div>
<div>&gt; script before running the above commands (assuming it does use li=
btool)?</div><div><br></div><div>I did source the environment before runnin=
g the commands. And they seem to do their work and return without any messa=
ges.</div>
<div><br></div><div>Are you saying that if the application does not use lib=
tool then configure will also throw that warning message?</div><div><br></d=
iv><div>Thanks,</div><div>Rudi</div></div>
</div>

--20cf300fb31992a87304c7f5eeb2--
