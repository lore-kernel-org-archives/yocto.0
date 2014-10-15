Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8056BE00862; Wed, 15 Oct 2014 03:07:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.192.48 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-qg0-f48.google.com (mail-qg0-f48.google.com
	[209.85.192.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1BFC7E007C1
	for <yocto@yoctoproject.org>; Wed, 15 Oct 2014 03:07:48 -0700 (PDT)
Received: by mail-qg0-f48.google.com with SMTP id i50so601456qgf.35
	for <yocto@yoctoproject.org>; Wed, 15 Oct 2014 03:07:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=yfyu4wsWD7kv5zfJBRWOoJaQrgkQ4g5LT6WH6rnDo/0=;
	b=l509E/36AqwLqjF3QLam3jGDPyPUUZlwSBnMz3D9uwLDEb7t8nGTW8IsT5H/4mfrGQ
	eFO5V9w2pB/1oq5MEyx8fY/+tpHiSC/TcUdL69BIVkEDHVX0bNd1LqNlutI4BnJ0CKaQ
	tlDTWuTFqFgtI6ccTyuSzj0KnIH5RQfUgwv76186SvxuOVOzJ5cnKA9YvYk4R55CGx53
	2Ht6ss3wpKUugY6pJNRG3BwzpiGukhU70H6ZVHA0GAPL3D9ra+dA2pZ32M0XIarqan0j
	VNXzDu1VxJUP2y6Z+EHMz6nOIaikVCuZflIh+axcvwJD6N+cuCb1cxgxbvLNwIg2l1jN
	e4pw==
X-Gm-Message-State: ALoCoQnOJsBS5Eh5FoQBxDwaddHJ1wPVR+eGxGMw7YrCSeJkR8Ze77Nw5VOrp3VUNIzVaXFtKZTD
X-Received: by 10.140.28.10 with SMTP id 10mr17307110qgy.15.1413367667808;
	Wed, 15 Oct 2014 03:07:47 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.100.239 with HTTP; Wed, 15 Oct 2014 03:07:27 -0700 (PDT)
In-Reply-To: <3230301C09DEF9499B442BBE162C5E482576880D@SESTOEX04.enea.se>
References: <3230301C09DEF9499B442BBE162C5E482576880D@SESTOEX04.enea.se>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 15 Oct 2014 11:07:27 +0100
Message-ID: <CAJTo0La=7QNS53qZDgShj+9yr6Ge0hyk9HFAdS+Ue0bZAkck4A@mail.gmail.com>
To: Sona Sarmadi <sona.sarmadi@enea.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	"openembedded-core@lists.openembedded.org"
	<openembedded-core@lists.openembedded.org>
Subject: Re: Truly scary SSL 3.0 vuln to be revealed soon:
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
X-List-Received-Date: Wed, 15 Oct 2014 10:07:53 -0000
Content-Type: text/plain; charset=UTF-8

On 15 October 2014 07:48, Sona Sarmadi <sona.sarmadi@enea.com> wrote:
> The advice is: Disable SSLv3.
>
> I created https://bugzilla.yoctoproject.org/show_bug.cgi?id=6843  so we can start to work with this immediately.

Presumably the list of affected packages is:
- gnutls
- openssl
- nss

Are there more?  Will ENEA be able to send patches to these packages?

Ross

