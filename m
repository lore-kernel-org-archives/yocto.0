Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3196FE00A84; Tue,  2 Apr 2019 04:55:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.53 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-io1-f53.google.com (mail-io1-f53.google.com
	[209.85.166.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A91D7E00A0C
	for <yocto@yoctoproject.org>; Tue,  2 Apr 2019 04:55:06 -0700 (PDT)
Received: by mail-io1-f53.google.com with SMTP id d201so10612856iof.7
	for <yocto@yoctoproject.org>; Tue, 02 Apr 2019 04:55:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=gANzZOMNUOyqtED015280qpyhf2mUzn2l98IgLLHAvY=;
	b=08jrAF7FsswqzQH6hhzu5Kn5qwSH/MDkZgbwYKRl6C12sr35XmWJjj4lELEaq7Gi5y
	5O+bY5wqgsLql1FBBrqL75UeySAxqc6T4JaG+HWikWsn4pYRAYNL+u37+u4KEo+qU1CR
	a66BPxjcZ4Bjsg0SiTr1bIrabNi65rGYUCW8qIu6kgFVMuC9eazibxsMnwEYVY3nFjgr
	iHz4NWnTMhkI0ONbhTJz4MMT+YCPXXKkNZYGjNaXUSQ9eKhEztPRUGl8q92teOGC7kE9
	r/Df5J7w3Rfz3xhf0Hu+83H9t9RN3UNwD7Nu1WSkNSBR2uVA89gNqbP9YVbnRqRe5WdI
	iwTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=gANzZOMNUOyqtED015280qpyhf2mUzn2l98IgLLHAvY=;
	b=ZynfgIdmxWPVLSDlT7l9CXXyzBfvDbBzXG+4WzwfLQmbnCdfWjM+pE8sC4QuV6oOBo
	Dz72t0EnKO26+m5IVc9iER3mvqNbIwM6MUN3xTGiYk5uVqFSdL7mjF5MyZpWAnd06ABr
	nskimT66Cg8kfZY5KyUgz81sQc2zF6IBgfGiJCyZhLkmrN0gWkJfhSZ/c4WKNfGbxMIv
	ycUgxsSSfCCgShQarzu9bZ+y7PfnEIQfMMWCMYJBkUEWRFh57M9pRKl0BT4W9b7/QNFp
	YTA11ZLJQXmm2yknSvUUOtr3iZV9sRVhRQxUevyZNXVHlNExvndwdYxiu2fyFDlVOSll
	x8kA==
X-Gm-Message-State: APjAAAUBNqKgO2qkFdKpZ5UKEry8hGn6ajtHTLDNHBdjG45E9fc5uHiR
	F9CuhqS2Nx3mqgSkZpEYZHGvvk/5fG7EzxWhX9MaOw==
X-Google-Smtp-Source: APXvYqxugKCTehU4wTsRIoUaU7AmtldhpflH8qn0cSMXDAkdhe+XpYEVtrV0JdlNHB6FHmOUvnfjtN+3qbnt9ySYLJM=
X-Received: by 2002:a6b:7112:: with SMTP id q18mr48022243iog.5.1554206106189; 
	Tue, 02 Apr 2019 04:55:06 -0700 (PDT)
MIME-Version: 1.0
References: <51a78952-31b9-6b1b-2459-c1092b50fdf2@cern.ch>
In-Reply-To: <51a78952-31b9-6b1b-2459-c1092b50fdf2@cern.ch>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 2 Apr 2019 12:54:55 +0100
Message-ID: <CAJTo0LbkJSEP+49qR_fSmN5cGB0-n+Gz8xaFnLvuvi3WAy+zOA@mail.gmail.com>
To: Ralf Spiwoks <spiwoks@cern.ch>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: PN is uppercase
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
X-List-Received-Date: Tue, 02 Apr 2019 11:55:07 -0000
Content-Type: text/plain; charset="UTF-8"

On Tue, 2 Apr 2019 at 12:36, Ralf Spiwoks <spiwoks@cern.ch> wrote:
> TWO questions:
>
> 1) Are those two issues related?

Probably not, unless you're trying to use a mixed-case override.

> 2) What is the logic behind allowing only lower case package names? This is to me
>     a serious restriction on the use of Yocto.

Two reasons: some package managers forbid packages with uppercase
names; and for performance reasons overrides are lowercase and as
package names are often embedded in overrides this implies that
package names need to be lowercase.

What's the problem with using lowercase names?

Ross

