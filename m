Return-Path: <ross.burton@intel.com>
Received: from fmsmga102.fm.intel.com (mga10.intel.com [192.55.52.92])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3B8C6E006CC
	for <yocto@yoctoproject.org>; Sun, 13 Jan 2013 12:03:36 -0800 (PST)
Received: from mail-lb0-f200.google.com ([209.85.217.200])
	by mga11.intel.com with ESMTP/TLS/RC4-SHA; 13 Jan 2013 12:03:34 -0800
Received: by mail-lb0-f200.google.com with SMTP id gn12so3129873lbb.7
	for <yocto@yoctoproject.org>; Sun, 13 Jan 2013 12:03:32 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-received:x-received:date:from:to:cc:message-id:in-reply-to
	:references:subject:x-mailer:mime-version:content-type
	:content-transfer-encoding:content-disposition:x-gm-message-state;
	bh=H/jiWsPb79XnHek4JbpoDmyy+F7oX7w+R5whXQlnk9M=;
	b=akCbu+2Mj+LbD1YY4U0AY7WdB2nCwKxakdGfCB3WoTy9CtsLSXPzFbaXZS7NTNsxNU
	/atcwY8rw1qB6iLXYJNAyvn7D3b0JTpmLBAvkGLDaHqnWqkMaFkouqKc11QIn3YWRS3U
	nSwHPdqDB8WscadlzEuJdk36OumAGOynvtafk3wal9Mhdsl8oEmIU1I1T/o0tZ//ysAF
	6Xk+J24IJC0IBkYo/FjEWW/GXYkrQwobQEBYJEGjRJsOHI8AL3VHi1E4ksst0sdYiDyF
	lZXEkXqfsj5Y1pmMHBzCuFoDehQG4Jm6HfUjnEjbpjGfsk2kTUDyQB9R2BCSx48mdiRp
	4jrQ==
X-Received: by 10.180.72.232 with SMTP id g8mr9110255wiv.0.1358107412058;
	Sun, 13 Jan 2013 12:03:32 -0800 (PST)
X-Received: by 10.180.72.232 with SMTP id g8mr9110245wiv.0.1358107411875;
	Sun, 13 Jan 2013 12:03:31 -0800 (PST)
Received: from [192.168.1.7] (35.106.2.81.in-addr.arpa. [81.2.106.35])
	by mx.google.com with ESMTPS id p2sm10570457wic.7.2013.01.13.12.03.30
	(version=TLSv1 cipher=RC4-SHA bits=128/128);
	Sun, 13 Jan 2013 12:03:31 -0800 (PST)
Date: Sun, 13 Jan 2013 20:03:29 +0000
From: Ross Burton <ross.burton@intel.com>
To: Andrei Gherzan <andrei@gherzan.ro>
Message-ID: <B2E17B5564364905A4A31F70FC62F9E0@intel.com>
In-Reply-To: <CAK18fxEkr4fhymhMDx7CGYTX7PGe1C57pw0iGYQaYNO9a1UFhw@mail.gmail.com>
References: <1358094195-23815-1-git-send-email-andrei@gherzan.ro>
	<1358094195-23815-2-git-send-email-andrei@gherzan.ro>
	<211E2BEE5356446CB425C4E2514B1285@intel.com>
	<CAK18fxEkr4fhymhMDx7CGYTX7PGe1C57pw0iGYQaYNO9a1UFhw@mail.gmail.com>
X-Mailer: sparrow 1.6.4 (build 1178)
MIME-Version: 1.0
X-Gm-Message-State: ALoCoQmgz2uj8WkESpgXbHFj8k1KRDTUEvWupRHFAp6DAck5zOcbJrm4jLC1w/eNO5SOaE/ceiU+aT+PqMysGDmDRk5nrOimhVaHk4c3R9lbKgDWlkESHiEKXptiOQYD3/Uy1UAb7Y9wJuCXsX2gFhoczWUNMEiszQ==
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-intel][PATCH 2/2] fri2.conf: mesa-dri was updated to 9.0.1
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
X-List-Received-Date: Sun, 13 Jan 2013 20:03:36 -0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

On Sunday, 13 January 2013 at 19:39, Andrei Gherzan wrote:
> Tested with a new sato build on master. Everything seems to be OK. 

glxinfo/glxgears or something that actually uses the hardware? 

Ross

