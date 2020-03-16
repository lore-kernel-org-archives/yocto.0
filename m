Received: from mail.stusta.mhn.de (mail.stusta.mhn.de [141.84.69.5])
 by mx.groups.io with SMTP id smtpd.web10.66020.1584359684080575857
 for <yocto@lists.yoctoproject.org>;
 Mon, 16 Mar 2020 04:54:46 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@stusta.de header.s=default header.b=MW25KUzK;
 spf=temperror, err=temporary DNS error (domain: stusta.mhn.de, ip: 141.84.69.5, mailfrom: srs0=atcy=5b=stusta.de=bunk@stusta.mhn.de)
Received: from [127.0.0.1] (localhost [127.0.0.1])
	by mail.stusta.mhn.de (Postfix) with ESMTPSA id 48gvqN1NPdz4J;
	Mon, 16 Mar 2020 12:54:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=stusta.de;
	s=default; t=1584359680;
	bh=IhqvFH4dOV9FCN8t+3Kpm0jbYRNgdl4JJEKQN0Nze94=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=MW25KUzKM2d9q57P9EsVHecV7SzDWUEXulIEcqjJISGrvSLxXhoHrBvX9LLbnVCLt
	 tTiQQyppX0i0bgy/SLqsibV570K2Zti8CcIvy1tet3DgMea0eSAEYkfN7WcGWVv847
	 1KNBQzGxI/1UBa0JcazsmsCoUorLWdn5SSmpJShWZwEt8+BLws/a2lkSHDncIrRhAB
	 4dSZ68bUzW43e8Mqo6PWBQ1ovkpsyiYZexfVxuxt/YUaIYNrRk0pq6G7/umN5h1X3q
	 j9udJ1v0Z+NMwV/WlajnSyRwVN2JCnTV8YBaNkNDZMKKJjRHZAu8dqs7s/mSy4G7fG
	 l40EcP8/F5MUsedkX/c1tvwC7yq7cJUaihzkhmpjZlqhwo8lfRuFd83SWA7PQZbzIe
	 liYOHZMLKy+T+t757o3fmoOOgUCEauvUEPTm0vd+4TSP1fqStEyueXiZzf2Y97YiyY
	 EmbeHT1puxCtCQf7+PkxYk8WgSQc7o0PBZ6Pir6qvTFy+pF9iFD3B9UWk7Jqs3xr13
	 38/OhsuBNDl0EZTZ9YFhW3mijWzyLDrqcij/YuHv/MWHIvJtqrW6sTYT7FqcOjVQe5
	 AcucedjjjNn6ZjzkCNWE+Cy+eF7zNev1EbhDrsqW8QDnaXgYAq5x14PEDeKEL/IAxh
	 i67CS+pJeRxt/zZLpHznKzR4=
Date: Mon, 16 Mar 2020 13:54:32 +0200
From: "Adrian Bunk" <bunk@stusta.de>
To: Sangeeta Jain <sangeeta.jain@intel.com>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] QA notification for completed autobuilder build (yocto-3.1_M3.rc1)
Message-ID: <20200316115432.GC14992@localhost>
References: <20200316093949.2D615E01861@yocto-www.yoctoproject.org>
 <MWHPR11MB1885A54E561C1063624148A1E3F90@MWHPR11MB1885.namprd11.prod.outlook.com>
 <MWHPR11MB1885FAEF405DE4413032F91EE3F90@MWHPR11MB1885.namprd11.prod.outlook.com>
MIME-Version: 1.0
In-Reply-To: <MWHPR11MB1885FAEF405DE4413032F91EE3F90@MWHPR11MB1885.namprd11.prod.outlook.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

On Mon, Mar 16, 2020 at 11:45:09AM +0000, Sangeeta Jain wrote:
>...
> Runtime auto test for following platforms:
>...
> 6. MPC8315e-rdb
>...

This platform has been removed from master, and is therefore not in M3.

> Thanks,
> Sangeeta

cu
Adrian
