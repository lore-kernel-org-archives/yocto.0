Return-Path: <trevor.woerner@linaro.org>
Received: from mail-ee0-f48.google.com (mail-ee0-f48.google.com [74.125.83.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C681BE017D5
	for <yocto@yoctoproject.org>; Thu, 31 Oct 2013 10:59:12 -0700 (PDT)
Received: by mail-ee0-f48.google.com with SMTP id d49so1536416eek.35
	for <yocto@yoctoproject.org>; Thu, 31 Oct 2013 10:59:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=74slmQjtQYWtd/w0M5byCMAzljeFdkVxjr+zLiGwK+s=;
	b=EiMxTPIRI6F+rGyzuVwgNpxSnY99XBZ3VN9+qYtWe0u6uuqJRDAPYV8aP4RqtpLD8F
	kY6sIjiz9+fYQxFGWO4Ob/8Teq8iPDmm2+3w59cxT83f1FKQqnK6I3LE4bCr+VOICWsa
	quvVN07pbkhqHtBzQmacmJqAA2P/vu2Or0UjO4h0YtEVKT/pylq7chzP23ouBtYT87Fx
	bYyZ48EmA9kfNAmZAlffPeGofjDVthVHZ3RQvea9K/6Cw1w5/F+/dyhwcgYl229UOyDJ
	ibyEbLIbDxqlz9tlaaoG6aeadQnk/heD21v95WXqbEEL+3Ade+WCTf/CLiPoR0i7CQZg
	2vpQ==
X-Gm-Message-State: ALoCoQnmjfDvONRdsrIHQss6i7w6e+OGSF5jemvPXHADQnW+Bpu1nwLzIUEX3F7FlLyCwrAVFdOW
MIME-Version: 1.0
X-Received: by 10.15.21.12 with SMTP id c12mr486031eeu.114.1383242351240; Thu,
	31 Oct 2013 10:59:11 -0700 (PDT)
Received: by 10.14.117.67 with HTTP; Thu, 31 Oct 2013 10:59:11 -0700 (PDT)
In-Reply-To: <CANyK_8eA1t1nkN61jbaB5hf3bym3wxGhJA3tKCu3NBqDEWO-jw@mail.gmail.com>
References: <CANyK_8eA1t1nkN61jbaB5hf3bym3wxGhJA3tKCu3NBqDEWO-jw@mail.gmail.com>
Date: Thu, 31 Oct 2013 10:59:11 -0700
Message-ID: <CALmOhgnF7NGUFQZ-QXZJg=tmimEw96zX_skeMv4ufpQmXw2N-A@mail.gmail.com>
From: Trevor Woerner <trevor.woerner@linaro.org>
To: Paul Barker <paul@paulbarker.me.uk>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: opkg git and download hosting
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
X-List-Received-Date: Thu, 31 Oct 2013 17:59:16 -0000
Content-Type: text/plain; charset=ISO-8859-1

On 30 October 2013 11:47, Paul Barker <paul@paulbarker.me.uk> wrote:
> I'm looking at moving opkg away from Subversion hosted on Google Code
> to Git hosted elsewhere.

> It's previously been mentioned that The
> Yocto Project may be able to help us with this.

Does opkg (as a project) fall under the Yocto umbrella?

