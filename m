Return-Path: <ross.burton@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 50A97E00283
	for <yocto@yoctoproject.org>; Wed, 18 Jul 2012 04:55:36 -0700 (PDT)
Received: from mail-qa0-f45.google.com ([209.85.216.45])
	by mga09.intel.com with ESMTP/TLS/RC4-SHA; 18 Jul 2012 04:55:35 -0700
Received: by qaeb19 with SMTP id b19so2716463qae.4
	for <yocto@yoctoproject.org>; Wed, 18 Jul 2012 04:55:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:x-gm-message-state;
	bh=jXioUSPVhR7F0uVIdjWG7s8AELr7qJ6GezE4TFPnhos=;
	b=dQ3YDxxIuzqd7nV/xRbAV3NPAIfIf6f4mj7ZnJmzJDs728DB2NuapsdVGBxbJUZI1O
	O7Eh44m796mDXogz51w9r4GVQBYEvbutAOXhrJ9JzBOzM/ZQ4hTa/bHv8iWV0jc+M3Lv
	2spjxBNFpPJi4Jc5jVNMrOVbaJsoeM6SPw/TQj58W1blllajaYJzzjxZWS+kO4ogvD8d
	+qPY9A0ptzShuaDvVwPUlhKSKDm9h0KxLL0iTH+wWNSOuK7sfWL0xcYDOSlbDbzDx5/e
	lbBNGf4n8+TlxF7VzNpdBAd2y11AHYf3bklgb6SE/8sFVbDPVVkQiMk4nIsgkv0IQ4dw
	RZcg==
Received: by 10.224.177.1 with SMTP id bg1mr5365220qab.68.1342612534878; Wed,
	18 Jul 2012 04:55:34 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.229.82.74 with HTTP; Wed, 18 Jul 2012 04:55:14 -0700 (PDT)
In-Reply-To: <5006A190.6090508@freenet.de>
References: <5006A190.6090508@freenet.de>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 18 Jul 2012 12:55:14 +0100
Message-ID: <CAJTo0La+k3hNQ_xDJO7ZXAxAdkQtyXqgNFi+Sv7eeGs2s=HXRw@mail.gmail.com>
To: Axel Beierlein <belatronix@freenet.de>
X-Gm-Message-State: ALoCoQmA/WHR+BQ8DqSsz98lYsYnf/g6C1buZ7Nc/U49eDVTX72IdFjejOM8tO41o4uJ6LNHSPcO
Cc: yocto@yoctoproject.org
Subject: Re: Error: PATH contains '.' or '', which will break the build, please remove this.
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
X-List-Received-Date: Wed, 18 Jul 2012 11:55:36 -0000
Content-Type: text/plain; charset=UTF-8

On 18 July 2012 12:44, Axel Beierlein <belatronix@freenet.de> wrote:
> Hello,
>
> when i start bitbake core-image-minimal i get the Error
> "PATH contains '.' or '', which will break the build, please remove this."
>
> But there is definitly no '' a whitespace or a point in my PATH.

That error could be phrased better...

If you don't have a . element, you probably have an empty element
(which is what the '' is trying to say).  For example:

/usr/bin:/bin::/home/ross/bin

The :: after /bin is bad, and it's this which needs to be removed.
This is normally due to bad concatenation when extending $PATH.

Ross

