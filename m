Return-Path: <ross.burton@intel.com>
Received: from orsmga101.jf.intel.com (mga06.intel.com [134.134.136.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B53C8E003BF
	for <yocto@yoctoproject.org>; Sat, 21 Jul 2012 12:54:47 -0700 (PDT)
Received: from mail-wg0-f44.google.com ([74.125.82.44])
	by mga02.intel.com with ESMTP/TLS/RC4-SHA; 21 Jul 2012 12:54:46 -0700
Received: by wgbdr13 with SMTP id dr13so3299845wgb.13
	for <yocto@yoctoproject.org>; Sat, 21 Jul 2012 12:54:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=date:from:to:cc:message-id:in-reply-to:references:subject:x-mailer
	:mime-version:content-type:content-transfer-encoding
	:content-disposition:x-gm-message-state;
	bh=DQOO8ykhFBmjz9KMLch377QsodidnZBooyi3QcBvnMk=;
	b=PTpc93ZmOWEZgfqbkeY5pHQF0L4dH2R/Zc+7jkwOM7uH4cPVgCG93HP/zDoNBekn9u
	BroPS5q+S/I6noN7tlxMQIUNYTX3XpxZo4L/zNT2i6YNDoznbEuEyS6TADuz0mRNiotE
	FkEIGHMV42ARhjj6YRnYbb5Vql9lGLy5jA69s4A5ghSgBV+NFLzriXs6PA1zLFlWjoR+
	qqE1JuhoFZ2g7TJCH2ztS6tceZ/fmecIhTTRnU7ZNnG9MxQLvPkXOQR76lNH+oL8TODY
	G3tDqzS5AMv5NCaIZE+DZJhg+5v/iMk0j0VYFNVnqXqwl9Of95sngIFZCKUD5hS10HuR
	glLw==
Received: by 10.180.81.165 with SMTP id b5mr35604660wiy.17.1342900485082;
	Sat, 21 Jul 2012 12:54:45 -0700 (PDT)
Received: from [192.168.1.12] (35.106.2.81.in-addr.arpa. [81.2.106.35])
	by mx.google.com with ESMTPS id w7sm6297519wiz.0.2012.07.21.12.54.43
	(version=SSLv3 cipher=OTHER); Sat, 21 Jul 2012 12:54:44 -0700 (PDT)
Date: Sat, 21 Jul 2012 20:54:45 +0100
From: Ross Burton <ross.burton@intel.com>
To: Elvis Dowson <elvis.dowson@gmail.com>
Message-ID: <ADFC5DCD3FAB494FAC4EE59C0ED44525@intel.com>
In-Reply-To: <CF0BA2D7-A20C-4048-8EA0-5BF6E300F8D3@gmail.com>
References: <CDD20590-77F2-4644-9FD5-E9A58494A86E@gmail.com>
	<BFE7DC64-D5FD-4E82-9495-2BE230C4FD3F@gmail.com>
	<CAEsOVNesi=gbZ4vF4uaxJR=xOXmNzX5fUMOB+a+9Mm5E88MQsg@mail.gmail.com>
	<CF0BA2D7-A20C-4048-8EA0-5BF6E300F8D3@gmail.com>
X-Mailer: sparrow 1.6.2 (build 1143.6)
MIME-Version: 1.0
X-Gm-Message-State: ALoCoQkM70IHKRPz5NTPMgUuhrDJ6iiadyE5r6Nx8btdFQgsbjEFTe4C0MUQEhJeBYhW4S1gxowc
Cc: McClintock Matthew-B29882 <B29882@freescale.com>,
	Yocto Discussion Mailing List <yocto@yoctoproject.org>
Subject: Re: poky git pull merge failures
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
X-List-Received-Date: Sat, 21 Jul 2012 19:54:47 -0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

On Saturday, 21 July 2012 at 20:15, Elvis Dowson wrote:
> I guess I have to reset the meta-openembedded layer as well.

Yes:

ERROR: ParseError at /tool/yocto/meta-openembedded/meta-oe/recipes-connectivity/networkmanager/networkmanager_0.9.2.0.bb:60: unparsed line: '<<<<<<< HEAD'

That's a merge conflict marker in a meta-oe file.

"git pull" giving merge problems is user error: you pulled into a branch that diverged from upstream.  If you hack on your local master, then do a git fetch and inspect the diff before merging origin/master.  A better solution (imho) is to leave local master as pristine, and branch it for any changes.

Ross 



