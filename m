Return-Path: <paul.betafive@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7D9C6E0089B; Mon, 24 Nov 2014 03:47:45 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.41 listed in list.dnswl.org]
Received: from mail-qg0-f41.google.com (mail-qg0-f41.google.com
	[209.85.192.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4D471E00837
	for <yocto@yoctoproject.org>; Mon, 24 Nov 2014 03:47:39 -0800 (PST)
Received: by mail-qg0-f41.google.com with SMTP id j5so6574732qga.0
	for <yocto@yoctoproject.org>; Mon, 24 Nov 2014 03:47:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type;
	bh=fIAbjTx/xk9P2tsi2K5P+UCuyDFGkViCT0PxZWH6KHo=;
	b=DY+knqLmCCF9hnb/aOCIUu+2jQNhcoCNSUDEVmbnuPdcmEMkvVaooFjz0tYcvghGtC
	h8DjT8rlu7PtHufm8jPBXVQiZnAiakQ7s7ouRNLNkc14T3i6fc2mrLw7iWXae8A3DIWA
	UPn4+LhDxAA9gtesV0uZgDOk9lz744jRQO+rZRAeqDw1j0BdZd7rowwrdRXQbCp749+U
	vLtQht8eetm46fJhM4Hq3P4+eToj0tdQ3DOgn73eG4kyAXJqqX7qkwa54EY7ySzR69p9
	2piKieKVjZ0dC/flTGMemvohtswzj7NF1nzSyGer606mHYbVDgUrYNCJvm+316QLllqB
	OMVg==
X-Received: by 10.224.4.133 with SMTP id 5mr28356949qar.37.1416829658435; Mon,
	24 Nov 2014 03:47:38 -0800 (PST)
MIME-Version: 1.0
Sender: paul.betafive@gmail.com
Received: by 10.140.143.146 with HTTP; Mon, 24 Nov 2014 03:46:57 -0800 (PST)
In-Reply-To: <1416564686-25157-1-git-send-email-Qi.Chen@windriver.com>
References: <1416564686-25157-1-git-send-email-Qi.Chen@windriver.com>
From: Paul Barker <paul@paulbarker.me.uk>
Date: Mon, 24 Nov 2014 11:46:57 +0000
X-Google-Sender-Auth: Mt7QjTYkl7L7mz-7slobTcBmoNo
Message-ID: <CANyK_8ee682ANqsGRH5+HQCBKxNkT-KSRO2-wLZMppP4y5_cUg@mail.gmail.com>
To: opkg-devel <opkg-devel@googlegroups.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: [opkg-devel] [opkg-utils PATCH] update-alternatives: avoid double slash problem
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
X-List-Received-Date: Mon, 24 Nov 2014 11:47:45 -0000
Content-Type: text/plain; charset=UTF-8

On 21 November 2014 at 10:11, Chen Qi <Qi.Chen@windriver.com> wrote:
> Signed-off-by: Chen Qi <Qi.Chen@windriver.com>
> ---
>  update-alternatives | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/update-alternatives b/update-alternatives
> index 8916cbd..ca01d5d 100644
> --- a/update-alternatives
> +++ b/update-alternatives
> @@ -97,7 +97,7 @@ find_best_alt() {
>         [ $# -lt 1 ] && return 1
>         [ ! -f $ad/$name ] && return 0
>
> -       link=$OPKG_OFFLINE_ROOT/`head -n 1 $ad/$name`
> +       link=$OPKG_OFFLINE_ROOT`head -n 1 $ad/$name`
>
>         prio=`sed -ne "1!p" $ad/$name | sed -e "s/\(.*\) \(.*\)/\2 \1/g" | sort -nr | head -n 1 | sed 's/ [^ ]*$//'`
>         if [ -z "$prio" ]; then
> --
> 1.9.1
>

I've applied this with a quick description of the issue added to the
commit message. You can send a SRCREV update for opkg-utils in oe-core
now.

Cheers,

-- 
Paul Barker

Email: paul@paulbarker.me.uk
http://www.paulbarker.me.uk

