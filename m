Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 05D6CE0144D
	for <yocto@yoctoproject.org>; Wed, 24 Oct 2012 04:14:53 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q9OBEqim002137;
	Wed, 24 Oct 2012 12:14:52 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 32732-09; Wed, 24 Oct 2012 12:14:48 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q9OBEgBh002131
	(version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=NO);
	Wed, 24 Oct 2012 12:14:42 +0100
Message-ID: <1351077282.22340.91.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Martin Jansa <martin.jansa@gmail.com>
Date: Wed, 24 Oct 2012 12:14:42 +0100
In-Reply-To: <1f5c57bfc8c08926a349c395e0e72058f857448e.1349358184.git.Martin.Jansa@gmail.com>
References: <cover.1349358184.git.Martin.Jansa@gmail.com>
	<1f5c57bfc8c08926a349c395e0e72058f857448e.1349358184.git.Martin.Jansa@gmail.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
Mime-Version: 1.0
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: yocto@yoctoproject.org
Subject: Re: [opkg-utils][PATCH 1/1] opkg-make-index: fix mis-indented else:
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
X-List-Received-Date: Wed, 24 Oct 2012 11:14:54 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2012-10-04 at 18:29 +0200, Martin Jansa wrote:
> From: Marc Olzheim <marc@iphion.nl>
> 
> Signed-off-by: Martin Jansa <Martin.Jansa@gmail.com>
> ---
>  opkg-make-index | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/opkg-make-index b/opkg-make-index
> index 1c3a8e1..44fa64d 100755
> --- a/opkg-make-index
> +++ b/opkg-make-index
> @@ -213,7 +213,7 @@ if filelist_filename:
>              (h,t) = os.path.split(fn)
>              if not t: continue
>              if t not in files: files[t] = name+':'+fn
> -        else: files[t] = files[t] + ',' + name+':'+fn
> +            else: files[t] = files[t] + ',' + name+':'+fn
>  
>      tmp_filelist_filename = ("%s.%d" % (filelist_filename, os.getpid()))
>      f = open(tmp_filelist_filename, "w")

Merged to master, thanks.

Richard


