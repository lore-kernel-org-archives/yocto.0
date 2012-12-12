Return-Path: <ross.burton@intel.com>
Received: from azsmga102.ch.intel.com (mga12.intel.com [143.182.124.36])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5B578E00770
	for <yocto@yoctoproject.org>; Wed, 12 Dec 2012 03:43:31 -0800 (PST)
Received: from mail-ob0-f200.google.com ([209.85.214.200])
	by mga14.intel.com with ESMTP/TLS/RC4-SHA; 12 Dec 2012 03:43:30 -0800
Received: by mail-ob0-f200.google.com with SMTP id wd20so2792732obb.11
	for <yocto@yoctoproject.org>; Wed, 12 Dec 2012 03:43:28 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:x-gm-message-state;
	bh=rTteZGn1LjQ+Pi4fRjsPWecbzxPAVkH2c5cZkWtFX8w=;
	b=QTw21+qEMTCWH+hN6cjuLy3QP0TU833w+ceOqxJHVmd41Mlg0lxic+lDYlPkKMHVI2
	SB9sZXjiCdfG0RXFwhBRKIY5C9y9KaEeQiUaaMeSdQ4ltDBFbVo8iJZlVzWIyh4hC9f6
	uuafs8rTgsU0igra0HFkS8yB4do/nlf5SQh3nJxgZi5pURy5PTJNbZhE9Ywaw/4ln9VK
	sY1V9Wh8ba579BKxTZHWRuqKt4Vl123SgAD9hjBSSHBI5sJEK0J5a8q78fri4e67fptX
	JPagsMWmthzVFwCNM+ZSU3ihi6oMiO3vIXwMktO0kSvT6dQ8TmpEgztZbJmlLQ+h8ZF2
	lh0A==
Received: by 10.60.31.49 with SMTP id x17mr336464oeh.33.1355312608687;
	Wed, 12 Dec 2012 03:43:28 -0800 (PST)
Received: by 10.60.31.49 with SMTP id x17mr336459oeh.33.1355312608572; Wed, 12
	Dec 2012 03:43:28 -0800 (PST)
MIME-Version: 1.0
Received: by 10.76.132.198 with HTTP; Wed, 12 Dec 2012 03:43:08 -0800 (PST)
In-Reply-To: <A994F48C-F169-4B59-9706-891A05CDB785@coote.org>
References: <C56AD576-BC63-4357-A090-C0DA3D5398C1@coote.org>
	<CAJTo0LZPSPeKkTcDQ+F_i8w=wUvNxEQeU7T6x4g5aE4cPz4G+w@mail.gmail.com>
	<A994F48C-F169-4B59-9706-891A05CDB785@coote.org>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 12 Dec 2012 11:43:08 +0000
Message-ID: <CAJTo0LYQe6NRA+3FZOrsB0Caun7DVi=58re1jMO2baTuxKrQSQ@mail.gmail.com>
To: Tim Coote <tim+yoctoproject.org@coote.org>
X-Gm-Message-State: ALoCoQkj4eUgTM9eyE/LP/k+LsTOjbRxEYwIZsCZbVjmN+8AYOILeF3xfE3pO0fd0qIqLzb+z3/WtLXXeqQljrw9GiqtvaCL412h1rQtv8bnilkgIhTEjUDZr9RDpkqPmHdQJGzykMluCmZY60QNNaloFt1vKCULnA==
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: adding package management
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
X-List-Received-Date: Wed, 12 Dec 2012 11:43:31 -0000
Content-Type: text/plain; charset=UTF-8

On 12 December 2012 11:31, Tim Coote <tim+yoctoproject.org@coote.org> wrote:
> Am I right in thinking that yum isn't in the standard recipes?

Yum, no.  Zypper is in oe-core and is used when you construct a RPM-based image.

(note that Zypper is being replaced by Smart in oe-core master)

Ross

