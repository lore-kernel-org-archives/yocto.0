Return-Path: <ross.burton@intel.com>
Received: from mail-qc0-f171.google.com (mail-qc0-f171.google.com
	[209.85.216.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 72207E00B7F
	for <yocto@yoctoproject.org>; Wed, 26 Mar 2014 09:58:23 -0700 (PDT)
Received: by mail-qc0-f171.google.com with SMTP id c9so2956844qcz.30
	for <yocto@yoctoproject.org>; Wed, 26 Mar 2014 09:58:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=SxNKgVYwx83jhRNu/oWCSgkFpCmwogLHJj0nVxoyOTs=;
	b=jj2vV6fWlWyDlVec/QSthfaCcdXrLa/VbYNuz3STNT15tQlHOdyO+ZY3NeK6hdFMZb
	0cu0nziJdV9hFDudgdeg/RWjJ+LuXgGu1UBr3i1c6sOVWnNipqP9/BHF6HHN9V6xd625
	/e4LOIuABqF14foQG+p97kJhnxWXtbx71SICIQl1upbqm/JbA2UGKDrzIurO3yWp3tyN
	unQ0xAXbXnl/smNPkblDIBAp2jydqtbuK5zRQZy1TPDzDRID/ECnPWn391hOTYNwYzRB
	QgjPvDmtrdS1oNFWxnIYFoxR3IiXQ+aRJ77hhjr83dxL6Mpb3dxjK+QIpCcw7bVfw8Vz
	2p+Q==
X-Gm-Message-State: ALoCoQluE+2OBtaRxc0GFBQXk+D2FjyjmgXzfsB30i1QHmgy/dKIOwdgNB4V/RwOCgXtbg0AAZSr
X-Received: by 10.140.106.195 with SMTP id e61mr85744241qgf.66.1395853103064; 
	Wed, 26 Mar 2014 09:58:23 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.27.167 with HTTP; Wed, 26 Mar 2014 09:58:02 -0700 (PDT)
In-Reply-To: <CAOJo16XX_Bu2pEcpOn73wOnDyRNTus3DxwLUjKwSraDAYPb_WQ@mail.gmail.com>
References: <CAOJo16XX_Bu2pEcpOn73wOnDyRNTus3DxwLUjKwSraDAYPb_WQ@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 26 Mar 2014 16:58:02 +0000
Message-ID: <CAJTo0LYnGx1bndU6aaw9Q10i+t=e8ie2mEi28AnyExEYqaXHzw@mail.gmail.com>
To: Mahyar Yaghmaee <mahyar@boundarydevices.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: autobuilder setting, ACCEPT_FSL_EULA
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
X-List-Received-Date: Wed, 26 Mar 2014 16:58:24 -0000
Content-Type: text/plain; charset=UTF-8

On 26 March 2014 16:53, Mahyar Yaghmaee <mahyar@boundarydevices.com> wrote:
> I'm trying to run autobuilder for my custom .conf file but I need to include
> ACCEPT_FSL_EULA="1" in the generated local.conf file.
>  Unfortunately I couldn't find anything related to that in the
> CreateAutoConf.py file to set in my .conf  file.

To set arbitrary values use the 'atextappend' property.  The example
buildsets in the autobuilder repo use this often.

Ross

