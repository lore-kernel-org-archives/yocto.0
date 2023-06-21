Return-Path: <oobitots@cisco.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6AC87EB64D8
	for <webhook@archiver.kernel.org>; Wed, 21 Jun 2023 10:43:16 +0000 (UTC)
Received: from rcdn-iport-5.cisco.com (rcdn-iport-5.cisco.com [173.37.86.76])
 by mx.groups.io with SMTP id smtpd.web10.7706.1687344190847494696
 for <yocto@lists.yoctoproject.org>;
 Wed, 21 Jun 2023 03:43:11 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@cisco.com header.s=iport header.b=f+bpO0Wq;
 spf=pass (domain: cisco.com, ip: 173.37.86.76, mailfrom: oobitots@cisco.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=cisco.com; i=@cisco.com; l=19441; q=dns/txt;
  s=iport; t=1687344190; x=1688553790;
  h=from:to:cc:subject:date:message-id:references:
   in-reply-to:mime-version;
  bh=XU20XdvzYH1fYtkwQS4OHRaMhPrvloSCWUE2dQIYsPc=;
  b=f+bpO0WqcKJ377fk5EOFLrz0mB5arY9hCtl5FYEPWCIw55cJ9dyuh1qo
   eNHrOmoR2s7dU4yBQ3QXO4lsXzzNiCiNLRVUqpunmeD4whDVa81FcllJ3
   GAJvswFQ9hfgVeS7j+34jWfhTEfbKYv0xnzV6TUZfg2qmGlgQlYix9u/I
   s=;
X-IPAS-Result: =?us-ascii?q?A0ANAAAX05JkmJ1dJa1aGwEBAQEBAQEBBQEBARIBAQEDA?=
 =?us-ascii?q?wEBAUAlgRYGAQEBCwGBLwEwUnMCWSoSR4gdA4ROX4hVA4tVi0uGT4ElA1YPA?=
 =?us-ascii?q?QEBDQEBLgEKCwQBAYUGAoYCAiU0CQ4BAgICAQEBAQMCAwEBAQEBAQMBAQUBA?=
 =?us-ascii?q?QECAQcEFAEBAQEBAQEBHhkFDhAnhWgNhgQBAQEBAwERFRkBAQwcDwEPAgEID?=
 =?us-ascii?q?gMDAQEBAS4hBwkBHQgCBA4FCBUEAYJcAYIVDQYDMQMBEKJAAYFAAooleIEBM?=
 =?us-ascii?q?4EBgggBAQYEBbAUDYJJCYFCAYdVgWKBWoZOJxuCDYEVQ4JoPoIgQgICAYFfB?=
 =?us-ascii?q?RkNEYNWggwiVx6BJidgAgM7Fms7UihBAgIVBDoFJgwqBAEBUjAGAoIddAICA?=
 =?us-ascii?q?oFyg0VYQ4EFBxMEgRJGAQSBWgICAogFgShvgR6BIHoCCQIRZ4EICF+Bc0ACD?=
 =?us-ascii?q?VQLC2OBHIJSAgIRJxMUUngbAwcDgQUQLwcEMh8JBgkYGBclBlEHLSQJExVBB?=
 =?us-ascii?q?INYCoENPxUOEYJaKzY/G1GCHQc2A0QdQAMLcD01FB8FBCMBSYFXMD6BCAoCI?=
 =?us-ascii?q?SSfcisDMA+CWAYCehMsIHAJKgIjAw0KZg+hBoF7n1hHcAong2GLfI0agXmGJ?=
 =?us-ascii?q?xeFV6QBmBqNW4NzlkICBAIEBQIOAQEGgWM6LYEucBWDIglJGQ+OIAwNCYNSh?=
 =?us-ascii?q?RSBPYkodQIBOAIHCwEBAwmKal4BAQ?=
IronPort-PHdr: A9a23:USxhzxPzav/suvFGO5wl6nfLWUAX0o4cdiYP4ZYhzrVWfbvmo9LpP
 VfU4rNmi1qaFYnY6vcRk+PNqOigQm0P55+drWoPOIJBTR4LiMga3kQgDceJBFe9LavCZC0hF
 8MEX1hgrDmgKUYAIM/lfBXJp2GqqzsbGxHxLw1wc+PyEI/OiNis/+uz4JbUJQ5PgWn1bbZ7N
 h7jtQzKrYFWmd57N68rwx3Vo31FM+hX3jZuIlSe3l7ws8yx55VktS9Xvpoc
IronPort-Data: A9a23:H1bSbagq+O1djus+gk3jIZ3mX161EBAKZh0ujC45NGQN5FlHY01je
 htvXGnUOa7fYWSgfIsibt/j8EMEu5/VyoNmHVdv/HwzRi9jpJueD7x1DKtf0wB+jyHnZBg6h
 ynLQoCYdKjYdleF+lH1dOKJQUBUjclkfJKkYAL/En43HVcMpBsJ00o5wLZn2Ncw27BVPivU0
 T/Mi5yHULOa82Yc3lI8s8pvfzs24ZweEBtB1rAPTagjUG32zhH5P7pDTU2FFEYUd6EPdgKMq
 0kv+5nilo/R109F5tpICd8XeGVSKlLZFVDmZna7x8FOjzAazhHe3JrXO9IhVhtF0wmNoutRy
 dsSh72RRCYUIfDTzbF1vxlwS0mSPIVc87PBZHO4q8HWkQvNcmDnxLNlC0Re0Y8wo7ksRzoRs
 61DbmlQMXhvhMruqF6/Yu5rjMU/K9XwFIgeoXpnizreCJ7KRLicHvSStIcBjV/cgOhoIKn7X
 dQTdAZfTwrubCF/FFISWZIHybLAan7XKm0E9w39SbAMy3nUxxB2+LzsK8bOPM2NTtlShlyfp
 G/N4yL+GB5yCTCE4SCO/nTpjejVkGalHokTD7a/sPVthTV/21D/FjUragep+cW9t3WeWtwAG
 W019wsTsvUtoRnDosbGYzW0p3uNvxg5UtVWEvEn5Azl9kYyy1vHboTjZmMfAOHKpPPaVhRxi
 QDUx4KB6ShH9ezKGSjEp994uBvrYXBNRVLucxPoWufs3jUOiJs4ghSKRdF5HevryNb0Ajr3h
 TuNqUDSZon/b+ZVjs1XHnie01pAQ6QlqCZpv207uUr5tmtEiHaNPdDA1LQixa8owHylZleAp
 mMYvMOV8foDC5qA/ATUHrVSRuH0t63cbm2E6bKKI3XH32r1k5JEVd4IiAyS2G8yWir5UWazO
 RSK6V85CGF7ZSHzNsebnL5d++xznfS/SrwJp9jfb8FFZdBqZRSb8SR1DXN8LEiz+HXAZZoXY
 M/BGe71VC5yIf0+kFKeGbxHuZd1nX9W+I8mbc2hp/hR+eDANCf9pHZsGAbmU93VG4vd+1mEo
 4gHZpvQo/idOcWnChTqHUcoBQliBVAwBIv9rIpccevrH+asMDhJ5yP5qV/5R7FYog==
IronPort-HdrOrdr: A9a23:1jc24a0sjBX0ZcYSPlk7NAqjBRtyeYIsimQD101hICG9Lfb4qy
 n+ppomPEHP5wr5AEtQ5uxoWJPrfZvdnaQFhrX5To3SIjUO2VHYYL2KiLGD/9SOIVyEygcw79
 YET0E6MqyNMbEYt7e03ODbKadb/DDvysnB7ouurAYOcegpUdAc0+4TMHf8LqQCfng/OXNPLu
 vk2iMonUvFRZ0QVKmGL0hAe9KGi8zAlZrgbxJDLQUg8hOygTSh76O/OwSE3z8FOgk/gIsKwC
 zgqUjU96+ju/a0xlv3zGnI9albn9Pn159qGNGMsM4IMT/h4zzYJLiJGofy/wzdktvfrWrCo+
 O85yvI+P4DrE85S1vF4ycFHTOQlgrGpUWSkGNwykGT0PARDAhKe/apw7gpPCcwLyEbzYpBOG
 Uh5RPAi3JaYCmw7xjV9pzGUQpnmVGzpmdnmekPj2ZHWY9bc7NJq5cDlXklW6voMRiKobzPKt
 MeRP309bJTaxeXfnrZtm5gzJilWWkyBA6PRgwHttaO2zZbkXhlxw9ArfZv00so5dY4Ud1J9u
 7EOqNnmPVHSdIXd7t0AKMETdGsAmLATBrQOCaZIEjhFqsAJ3XRwqSHqokd9aWvYtgF3ZEykJ
 POXBdRsnMzYVvnDYmU0JhC4nn2MROAtPTWu7ZjDrRCy8nBreDQQF++oXgV4r6dn8k=
X-Talos-CUID: =?us-ascii?q?9a23=3AnR6LsGrTZbR1P2OgOsxFzMnmUf0aLm+F8HPtGG+?=
 =?us-ascii?q?5BzlbaZyYaGKPpbwxxg=3D=3D?=
X-Talos-MUID: 9a23:7/nVBAjOVBnLan0vDqo8VcMpEvo3xp6wAl0xobYYlca4BQJ1PmadtWHi
X-IronPort-Anti-Spam-Filtered: true
Received: from rcdn-core-6.cisco.com ([173.37.93.157])
  by rcdn-iport-5.cisco.com with ESMTP/TLS/DHE-RSA-SEED-SHA; 21 Jun 2023 10:43:09 +0000
Received: from rcdn-opgw-4.cisco.com (rcdn-opgw-4.cisco.com [72.163.7.165])
	by rcdn-core-6.cisco.com (8.15.2/8.15.2) with ESMTPS id 35LAh8i2030482
	(version=TLSv1.2 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK)
	for <yocto@lists.yoctoproject.org>; Wed, 21 Jun 2023 10:43:09 GMT
Authentication-Results: rcdn-opgw-4.cisco.com; dkim=pass (signature verified) header.i=@cisco.com; spf=Pass smtp.mailfrom=oobitots@cisco.com; dmarc=pass (p=quarantine dis=none) d=cisco.com
X-IronPort-AV: E=Sophos;i="6.00,260,1681171200"; 
   d="scan'208,217";a="3249192"
Received: from mail-dm6nam12lp2170.outbound.protection.outlook.com (HELO NAM12-DM6-obe.outbound.protection.outlook.com) ([104.47.59.170])
  by rcdn-opgw-4.cisco.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 21 Jun 2023 10:43:08 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RAQGSVnhviArKkg6uZoeMks46soFUReg8ivPLy6E6IxH1mBAoL0wG4enJlim0J579v+l3WvYa24Imv62nG1nsCrngfgpvxhXBiXhtfJ89TWLRm+ziGWyeUE/wVMvLZwD43EJNBhC+aNjkJqqy5RUa9alIJSQGfczC5TYHDHq+mY/TNNinJHoOJF2HSwj5yCDb81+V5qhO+guSyUQHLiDCeVNfS8a6in13anaYIKf0QUr09F+rKh6w3LdxtMtKeJIHB6ekx+31ZQWoQrmKkUbgLAOD7buVy4r/6cDcNZOm6Hlx7dPSlatDekRWFrWF+07ROZj1e1jSysATKtgGYNkvA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jGII+anIB72TaKBEi0CkJhov7xnzRlrDGePiEeKLPnQ=;
 b=m7QQjU7194ULmLh3LQpK0j8YOLBtCRkarScu1W4dOhuYfT0PatyVJBXDW+Iv8dyhiBArimdFQ0Gya2LoswKrteMPUf46jJqfrW4GKEj4OIwl+yUE7SNqYHPQLWqWzOVkmZfPnKWEnZcu+pj92oz8oUVgOPDdesvtPta0xeKqzAHITRN0/vkMFEOeTQeJ/CVl67cCyIJ2r7qIvFNtpmsbTDGdpdpYT6PXBcysB0Zktj+JgJymSOisA9MvQ3cqYR+m2+LUEbzKt/eYyAIYCqO+2Ak8M9fgEjjDAxEDDeU3ZErfMDvwUk4QCU4qABmpzRqVm6tr+6mLSrlQ34PsnpvgBQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cisco.com; dmarc=pass action=none header.from=cisco.com;
 dkim=pass header.d=cisco.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cisco.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jGII+anIB72TaKBEi0CkJhov7xnzRlrDGePiEeKLPnQ=;
 b=GnUCzLw3VhghcjK/wOXvIyxCrijIw/A1M3xTgETIRnwnx6EBGfQFbBC3W+C/PlDkatomqfsi4ip1uvcgG+iQ1PLijRH9ut6HtTJ1HquU+RpV1jPO+Ff36pW0tqvy49Xnr5WKlabWwKOW4CRhczv164ARvQh7QGBoX1bkHAJYbYE=
Received: from PH0PR11MB4902.namprd11.prod.outlook.com (2603:10b6:510:37::5)
 by SJ2PR11MB8537.namprd11.prod.outlook.com (2603:10b6:a03:56f::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6521.23; Wed, 21 Jun
 2023 10:43:06 +0000
Received: from PH0PR11MB4902.namprd11.prod.outlook.com
 ([fe80::858d:2a31:10b8:fc33]) by PH0PR11MB4902.namprd11.prod.outlook.com
 ([fe80::858d:2a31:10b8:fc33%4]) with mapi id 15.20.6521.023; Wed, 21 Jun 2023
 10:43:06 +0000
From: "Oleksiy Obitotskyi -X (oobitots - GLOBALLOGIC INC at Cisco)"
	<oobitots@cisco.com>
To: Alexander Kanavin <alex.kanavin@gmail.com>
CC: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] File magic/sdk relocation
Thread-Topic: [yocto] File magic/sdk relocation
Thread-Index: AQHZosQOzu45CPLT8UekDIADPdm7Za+SYS+ggAKuC6k=
Date: Wed, 21 Jun 2023 10:43:06 +0000
Message-ID: 
 <PH0PR11MB4902917C3F4676900A534D44D75DA@PH0PR11MB4902.namprd11.prod.outlook.com>
References: 
 <PH0PR11MB49021AEB3FDB7ED00B7CE733D75FA@PH0PR11MB4902.namprd11.prod.outlook.com>
 <176A1DBE70E5CC10.31313@lists.yoctoproject.org>
 <CANNYZj9-AOrddDK2VRrbrrDnWhgDOJ2tPbJRXO1bWrKpoOfzzg@mail.gmail.com>
In-Reply-To: 
 <CANNYZj9-AOrddDK2VRrbrrDnWhgDOJ2tPbJRXO1bWrKpoOfzzg@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR11MB4902:EE_|SJ2PR11MB8537:EE_
x-ms-office365-filtering-correlation-id: c2a1f682-7c5a-4664-c67b-08db72444c64
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 oPcJVoLeM/Ndu1m4ZOF7bNOaMurvQcJjtOvyHGxpMlYaE9anLxt+Gb2AzDeR3xWFXcRApCGmhkn4MvbNJD6nLqbXHjORbdomt6qUWk7fc6I09aBPJ5KLEMn+qdwoNQlL1WMWDasum+7Re38LsZdovfPPFYl1YeIXY84HAeB+hDp1kw+BfE04FLSHsIdhglpzwr0oRaOV0xAHOytFEJl0DVAEJi0+QHkY5qPM75IMTXFYabHYcoSNi/CdG2/h8dC1++Job/pnDbijRmaeeeEu3Ybn6FEcx2bdovqaKilDam1LEaUMA2jQ/U3K4HGgB3kumclzeU+7gkLEz56CaUThxsrkCHqGz0GzjHcNdvzRoiLvUWqsWZicQCEhJ8X7r39tQRdO6nDujpCbIlPUrXbuFOrzO3bZBlalvJ9qByRWu3Y9L44J+0ir6PwAkUl+VxJsO5DDcVS0qGes+p9lbNG/2SKZbqUpkOul4Q2HvtaipFVmLOOfcaxKeaNvibQEB59Di64qfwajL2oXXm1hWvzohZGwaEqzIOutEgnTtYKnCaBo5NjDAXKFAdxDO1hHWFEOqvGMhgFxYoBIcybe0Nkmlpnpa71g+j5On7pR9FzHyzY=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH0PR11MB4902.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(346002)(366004)(396003)(376002)(136003)(39860400002)(451199021)(966005)(38100700002)(122000001)(9686003)(53546011)(6506007)(83380400001)(186003)(55016003)(52536014)(2906002)(33656002)(41300700001)(5660300002)(8676002)(8936002)(71200400001)(7696005)(38070700005)(478600001)(166002)(4326008)(6916009)(64756008)(66476007)(66556008)(66946007)(76116006)(66446008)(316002)(86362001)(91956017)(19627405001)(66899021);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?qNc57WVlTHk9txsc9hy30YZdtuKJvijxcNgfdhOhdmxofHdwH1v1Mo02JM?=
 =?iso-8859-1?Q?Vs5SBwvfGkE6yzqTBedgKXBAYsx55aYIgqJc6wFz5rzWdmbOd3mibUlyBa?=
 =?iso-8859-1?Q?RLXFGyWkLlg+F8FXwHTI/EFmYeqFYeNrKrQe/My6K/RuBjgANoOIo+Da6P?=
 =?iso-8859-1?Q?sJXEW1eP7Evf8fcmvVu+8peVfhrYU8b9PkHYCvkMN+bkB85pPmWtSVHeob?=
 =?iso-8859-1?Q?Sp0LbAhfh6L1Ml0oASJNMuukTNQ6MHg43I1b33dbJ/Szd5Tzy+Iv1R6fDV?=
 =?iso-8859-1?Q?JIDDg4XMkDuyHoZowPQgD2R2KqwTvLeZbIYsJcUHbMHc5kUjR72qBXcvcc?=
 =?iso-8859-1?Q?GTCZC7jik0bb8A/zhDIHAOdXs+c/J0vMrcgY2ei1Pf3bGmieV9lfi3ExPI?=
 =?iso-8859-1?Q?qJ2/suI/UyOpp2EL6oGaBeOjUUHZCowhsdv42v3MuYtC6fMxwe/VAB7yNL?=
 =?iso-8859-1?Q?savs8gK3tsqfKP8PTJ+nKCI1Q2i4AFTOllhv1BGM1Ytdho8NWscdcX3/q8?=
 =?iso-8859-1?Q?QX+VAK4uI5eeFu6XlkGo23WnNNKhl12wO9U0TTYmhKmtulupOFSZyMy16N?=
 =?iso-8859-1?Q?c36VgycQwwsM36sbvMWtrk6ZwLrcRpjVjOLb50V+KNhfD3riaR/ocrIkWr?=
 =?iso-8859-1?Q?ljZGb2fiBkoPDNZ3Xs+EsoRnGKS2I4CNlmeemAOsfWI/3lu2RVmOtMTlbv?=
 =?iso-8859-1?Q?Klbsd+AI0UjyKPR3O7TxJmWuIuL41idOi/YhceizYVLgBsKM3xKXyDhWjy?=
 =?iso-8859-1?Q?HV2LSFYH/WxWD83ZcDPRT2MHgiRHfcG+K7sBc4GOL83Pk58t8Zh3H00xIJ?=
 =?iso-8859-1?Q?gyJt2bIFq6S9Ka5q4Hfvz1XCoPHjk5D1fBpm5IHj8PtmdkYmD2JYm7j4tb?=
 =?iso-8859-1?Q?3wTMVKoQMVrFzkroPSKlNZ/pP+THLV7dpGGcnlOI/7xt8s4ET+63JWQSoe?=
 =?iso-8859-1?Q?rf/oO+ihsnIPWJEySM0gRMCAEnEmnoyedfoPvS0eyKtXMN1Qo73tzK8WzN?=
 =?iso-8859-1?Q?+RTqXRrkI6RVsGjMvLBYZv0u17PhRIr14QjVObj6lod7bZMqeVw9mw9f5S?=
 =?iso-8859-1?Q?BFDeecu2XOSIovjxC0n/WMyksoTrevEsTA8IkgVrrnZiR5gH7REeaouVi4?=
 =?iso-8859-1?Q?Pl+Mgih2gFJ99LHyutSXmmk9Q+LtI5AviIaDPOgnfZXxbnCzTYrQK/0yGT?=
 =?iso-8859-1?Q?c3eTlTUMD8bQXNDhd85HLzdlg4KCYmO/EJ94NRin0sDWxfO0lDHX30vQdT?=
 =?iso-8859-1?Q?XYReIDrE8uFxkuTe5wLXT2ftAG5V9fT0EPTVISheakVAVbQ558AogZ0FcW?=
 =?iso-8859-1?Q?E1stFdzdSOf+Xx2/uxXz7rAChn3dwL1Hy4Ouz2ns/tyvDbnScELf5q2jRM?=
 =?iso-8859-1?Q?yEx8VF6ihtglH8/GwYM3ExlltcyFXW82YgLzkOvF38vMI5K3qRhxliSizN?=
 =?iso-8859-1?Q?hkGldaU0uOoD6odRNyXvfGM0wZ/tdtQzjKJ/spDgQo5zcKvQgLZKWbMZT7?=
 =?iso-8859-1?Q?vFV2KwREP9ghtzXrncISACyRgceG2pHd3u3NV7tH5qKfLTutDGYdFrmY9H?=
 =?iso-8859-1?Q?WsYX6k6uVbvjH/4bPcE+2jw7WyWM58ZU5F3xdDfBnDjgIA+Hsl53k4UCB5?=
 =?iso-8859-1?Q?NeYH67GiDDQ/k1InQx2+u6KASmfQSDhTFr?=
Content-Type: multipart/alternative;
	boundary="_000_PH0PR11MB4902917C3F4676900A534D44D75DAPH0PR11MB4902namp_"
MIME-Version: 1.0
X-OriginatorOrg: cisco.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB4902.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c2a1f682-7c5a-4664-c67b-08db72444c64
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Jun 2023 10:43:06.7813
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 5ae1af62-9505-4097-a69a-c1553ef7840e
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: vSg0jTYB1VMh5GEJQXV4CMM+S4m/taKRHDaFNtZ+K9NP8W6ABbYEoNni6qdZVJzJm/mbqBsr3hTGxB64S8uDjA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB8537
X-Outbound-SMTP-Client: 72.163.7.165, rcdn-opgw-4.cisco.com
X-Outbound-Node: rcdn-core-6.cisco.com
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 21 Jun 2023 10:43:16 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60371

--_000_PH0PR11MB4902917C3F4676900A534D44D75DAPH0PR11MB4902namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi,

I have problem with reproducibility of this issue.

What I did: build buildtools tarball and install it
Than build sdk with this buildtools tarball.


  1.  No changes. Buildtools tarball installed and relocated into.
/nobackup/oobitots/btt-master/sysroots/x86_64-xesdk-linux/usr/bin/file poin=
t to file.file actual binary that use MAGIC
/nobackup/oobitots/btt-master/sysroots/x86_64-xesdk-linux/environment-setup=
.d/file.sh contains:
export MAGIC=3D"/usr/local/oe-sdk-hardcoded-buildpath/sysroots/x86_64-xesdk=
-linux/usr/share/misc/magic.mgc"
  2.   Fix file recipe as recommended with escaping dollar sign and reinsta=
ll tarball. Got strange results.
/nobackup/oobitots/btt-master/sysroots/x86_64-xesdk-linux/environment-setup=
.d/file.sh contains:
export MAGIC=3D"OECORE_NATIVE_SYSROOT/nobackup/oobitots/btt-master/sysroots=
/x86_64-xesdk-linux/usr/share/misc/magic.mgc", i.e.
proper path but OECORE_NATIVE_SYSROOT not replaced with value
  3.   Cleanup and retest option (a). Get proper path
export MAGIC=3D"/nobackup/oobitots/btt-master/sysroots/x86_64-xesdk-linux/u=
sr/share/misc/magic.mgc"

And I can't reproduce the issue with magic path. Probably it was an issue o=
n my side with inproper initialization or something.

But still even with proper path to the magic file I have initial issue:

ERROR: quilt-native-0.67-r0 do_populate_sysroot: Fatal errors occurred in s=
ubprocesses:
Command '['file', '-b', '/nobackup/oobitots/sdk-master/test-file/tmp/work/x=
86_64-linux/quilt-native/0.67-r0/sysroot-destdir/nobackup/oobitots/sdk-mast=
er/test-file/tmp/work/x86_64-linux/quilt-native/0.67-r0/recipe-sysroot-nati=
ve/usr/share/quilt/compat/sendmail']' returned non-zero exit status 1.

It looks like 'file' executed during do_package is unable to find magic, so=
 environment have no such MAGIC value.

Trying to test with bitbake quilt-native -c devshell

oobitots-> echo $MAGIC
/nobackup/oobitots/btt-master/sysroots/x86_64-xesdk-linux/usr/share/misc/ma=
gic.mgc
[/nobackup/oobitots/sdk-master/test-file/tmp/work/x86_64-linux/quilt-native=
/0.67-r0/quilt-0.67]
oobitots-> which file
/nobackup/oobitots/sdk-master/test-file/tmp/hosttools/file
[/nobackup/oobitots/sdk-master/test-file/tmp/work/x86_64-linux/quilt-native=
/0.67-r0/quilt-0.67]
oobitots-> file /nobackup/oobitots/btt-master/sysroots/x86_64-xesdk-linux/u=
sr/bin/file.file
/nobackup/oobitots/btt-master/sysroots/x86_64-xesdk-linux/usr/bin/file.file=
: ELF 64-bit LSB executable, x86-64, version 1 (SYSV), dynamically linked, =
interpreter /nobackup/oobitots/btt-master/sysroots/x86_64-xesdk-linux/lib/l=
d-linux-x86-64.so.2, BuildID[sha1]=3Da7344295f5f77b886e3bef6cab8e21ea6e8ad0=
8b, for GNU/Linux 4.18.0, stripped

Regards,
Oleksiy

________________________________
From: Alexander Kanavin <alex.kanavin@gmail.com>
Sent: Monday, June 19, 2023 19:27
To: alex.kanavin@gmail.com <alex.kanavin@gmail.com>
Cc: Oleksiy Obitotskyi -X (oobitots - GLOBALLOGIC INC at Cisco) <oobitots@c=
isco.com>; yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] File magic/sdk relocation

On closer look, it should even say:
export MAGIC=3D"\$OECORE_NATIVE_SYSROOT/usr/share/misc/magic.mgc"

If you can test this and confirm that it works, a patch would be welcome.

Alex

On Mon, 19 Jun 2023 at 18:55, Alexander Kanavin via
lists.yoctoproject.org <alex.kanavin=3Dgmail.com@lists.yoctoproject.org>
wrote:
>
> I think there is a mistake in the file recipe (and rpm has the problem to=
o):
>
>         cat <<- EOF > ${D}${SDKPATHNATIVE}/environment-setup.d/file.sh
>                 export MAGIC=3D"$OECORE_NATIVE_SYSROOT${datadir}/misc/mag=
ic.mgc"
>         EOF
>
> $OECORE_NATIVE_SYSROOT should be prefixed with a \ to prevent shell
> variable expansion at build time.
>
> Can you check that the problem is then fixed?
>
> Alex
>
> On Mon, 19 Jun 2023 at 17:50, Oleksiy Obitotskyy via
> lists.yoctoproject.org <oobitots=3Dcisco.com@lists.yoctoproject.org>
> wrote:
> >
> > Hi,
> >
> > I'm working on master oe core master branch and run into problem with f=
ile for nativesdk (buildtools tarball).
> > File started to use MAGIC variable initialized from .../environment-set=
up.d/file.sh, like
> >
> > /usr/local/oe-sdk-hardcoded-buildpath/sysroots/x86_64-xesdk-linux/usr/s=
hare/misc/magic.mgc
> >
> > This path relocation does not covered by relocate_sdk.sh script.
> >
> > Commit that change behavior from wrapper that use relative path to envi=
ronment variable with absolute path is:
> >
> > commit 47db876d09d9a4394048579c21d0b394450ce681
> > Author: Chen Qi <Qi.Chen@windriver.com>
> > Date:   Tue Jan 17 12:06:30 2023 +0800
> >
> >     file: export MAGIC in SDK
> >
> >     Previously, a wrapper is used for file, which adds '--magic-file'
> >     option to it. But other components might use libmagic and in such
> >     case, if there's no MAGIC environent variable set correctly, things
> >     do not work. For example, rpmbuild makes use of libmagic and it
> >     requries MAGIC to be set correctly.
> >
> >     Signed-off-by: Chen Qi <Qi.Chen@windriver.com>
> >     Signed-off-by: Luca Ceresoli <luca.ceresoli@bootlin.com>
> >     Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
> >
> >
> > I would like to ask if anybody else has such an issue. Any propositions=
 other than reverting commit?
> >
> > Regards,
> > Oleksiy
> >
> >
> >
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#60350): https://lists.yoctoproject.org/g/yocto/messag=
e/60350
> Mute This Topic: https://lists.yoctoproject.org/mt/99626082/1686489
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin@g=
mail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

--_000_PH0PR11MB4902917C3F4676900A534D44D75DAPH0PR11MB4902namp_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 11pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
Hi,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 11pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 11pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
I have problem with reproducibility of this issue.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 11pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 11pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
What I did: build buildtools tarball and install it</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 11pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
Than build sdk with this buildtools tarball.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 11pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 11pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
<ol data-editing-info=3D"{&quot;orderedStyleType&quot;:7,&quot;unorderedSty=
leType&quot;:1}" data-listchain=3D"__List_Chain_408">
<li style=3D"list-style-type: &quot;(a) &quot;;"><span>No changes. Buildtoo=
ls tarball installed and relocated into.<br>
</span>
<div style=3D"list-style-type: &quot;(b) &quot;;"><span class=3D"ContentPas=
ted2">/nobackup/oobitots/btt-master/sysroots/x86_64-xesdk-linux/usr/bin/fil=
e point to file.file actual binary that use MAGIC<br>
</span></div>
<div style=3D"list-style-type: &quot;(b) &quot;;"><span class=3D"ContentPas=
ted1">/nobackup/oobitots/btt-master/sysroots/x86_64-xesdk-linux/environment=
-setup.d/file.sh contains:</span></div>
<div style=3D"list-style-type: &quot;(b) &quot;;"><span class=3D"ContentPas=
ted1 ContentPasted3">export MAGIC=3D&quot;<font size=3D"2"><span style=3D"f=
ont-size:11pt" class=3D"ContentPasted4">/usr/local/oe-sdk-hardcoded-buildpa=
th/sysroots/x86_64-xesdk-linux/usr/share/misc/magic.mgc</span></font>&quot;=
<br>
</span></div>
</li><li style=3D"list-style-type: &quot;(b) &quot;;"><span>&nbsp;Fix file =
recipe as recommended with escaping dollar sign and reinstall tarball. Got =
strange results.</span>
<div style=3D"list-style-type: &quot;(c) &quot;;"><span><span class=3D"Cont=
entPasted1 ContentPasted5">/nobackup/oobitots/btt-master/sysroots/x86_64-xe=
sdk-linux/environment-setup.d/file.sh contains:</span></span></div>
<div style=3D"list-style-type: &quot;(c) &quot;;"><span><span class=3D"Cont=
entPasted1 ContentPasted5 ContentPasted6">export MAGIC=3D&quot;<font size=
=3D"2"><span style=3D"font-size:11pt" class=3D"ContentPasted7">OECORE_NATIV=
E_SYSROOT</span></font>/nobackup/oobitots/btt-master/sysroots/x86_64-xesdk-=
linux/usr/share/misc/magic.mgc&quot;,
 i.e.</span></span></div>
<div style=3D"list-style-type: &quot;(c) &quot;;"><span><span class=3D"Cont=
entPasted1 ContentPasted5 ContentPasted6">proper path but
<span><span class=3D"ContentPasted1 ContentPasted5 ContentPasted6"><font si=
ze=3D"2"><span style=3D"font-size:11pt" class=3D"ContentPasted7 ContentPast=
ed8">OECORE_NATIVE_SYSROOT</span></font></span></span> not replaced with va=
lue<br>
</span></span></div>
</li><li style=3D"list-style-type: &quot;(c) &quot;;"><span>&nbsp;Cleanup a=
nd retest option (a). Get proper path</span>
<div style=3D"list-style-type: &quot;(d) &quot;;"><span><span><span class=
=3D"ContentPasted1 ContentPasted5 ContentPasted6 ContentPasted9">export MAG=
IC=3D&quot;/nobackup/oobitots/btt-master/sysroots/x86_64-xesdk-linux/usr/sh=
are/misc/magic.mgc&quot;</span></span><br>
</span></div>
</li></ol>
<div>And I can't reproduce the issue with magic path. Probably it was an is=
sue on my side with inproper initialization or something.</div>
<div><br>
</div>
<div>But still even with proper path to the magic file I have initial issue=
:</div>
<div><br>
</div>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 11pt; color: rgb(0, 0, 0);" class=3D"elementToProof ContentPasted0">
ERROR: quilt-native-0.67-r0 do_populate_sysroot: Fatal errors occurred in s=
ubprocesses:
<div class=3D"ContentPasted0">Command '['file', '-b', '/nobackup/oobitots/s=
dk-master/test-file/tmp/work/x86_64-linux/quilt-native/0.67-r0/sysroot-dest=
dir/nobackup/oobitots/sdk-master/test-file/tmp/work/x86_64-linux/quilt-nati=
ve/0.67-r0/recipe-sysroot-native/usr/share/quilt/compat/sendmail']'
 returned non-zero exit status 1.</div>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 11pt; color: rgb(0, 0, 0);" class=3D"elementToProof ContentPasted0">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 11pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
It looks like 'file' executed during do_package is unable to find magic, so=
 environment have no such MAGIC value.<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 11pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 11pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
Trying to test with bitbake quilt-native -c devshell</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 11pt; color: rgb(0, 0, 0);" class=3D"elementToProof ContentPasted10">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 11pt; color: rgb(0, 0, 0);" class=3D"elementToProof ContentPasted10">
oobitots-&gt; echo $MAGIC
<div class=3D"ContentPasted10">/nobackup/oobitots/btt-master/sysroots/x86_6=
4-xesdk-linux/usr/share/misc/magic.mgc</div>
<div class=3D"ContentPasted10">[/nobackup/oobitots/sdk-master/test-file/tmp=
/work/x86_64-linux/quilt-native/0.67-r0/quilt-0.67]</div>
<div class=3D"ContentPasted10">oobitots-&gt; which file</div>
<div class=3D"ContentPasted10">/nobackup/oobitots/sdk-master/test-file/tmp/=
hosttools/file</div>
<div class=3D"ContentPasted10">[/nobackup/oobitots/sdk-master/test-file/tmp=
/work/x86_64-linux/quilt-native/0.67-r0/quilt-0.67]</div>
<div class=3D"ContentPasted10">oobitots-&gt; file /nobackup/oobitots/btt-ma=
ster/sysroots/x86_64-xesdk-linux/usr/bin/file.file</div>
<div class=3D"ContentPasted10">/nobackup/oobitots/btt-master/sysroots/x86_6=
4-xesdk-linux/usr/bin/file.file: ELF 64-bit LSB executable, x86-64, version=
 1 (SYSV), dynamically linked, interpreter /nobackup/oobitots/btt-master/sy=
sroots/x86_64-xesdk-linux/lib/ld-linux-x86-64.so.2,
 BuildID[sha1]=3Da7344295f5f77b886e3bef6cab8e21ea6e8ad08b, for GNU/Linux 4.=
18.0, stripped</div>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 11pt; color: rgb(0, 0, 0);" class=3D"elementToProof ContentPasted10">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 11pt; color: rgb(0, 0, 0);" class=3D"elementToProof ContentPasted10">
Regards,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 11pt; color: rgb(0, 0, 0);" class=3D"elementToProof ContentPasted10">
Oleksiy<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 11pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
<br>
</div>
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div dir=3D"ltr"><font style=3D"font-size: 11pt; color: rgb(0, 0, 0);" face=
=3D"Calibri, sans-serif"><b>From:</b> Alexander Kanavin &lt;alex.kanavin@gm=
ail.com&gt;<br>
<b>Sent:</b> Monday, June 19, 2023 19:27<br>
</font></div>
<div id=3D"divRplyFwdMsg" dir=3D"ltr" class=3D"elementToProof"><font style=
=3D"font-size: 11pt; color: rgb(0, 0, 0);" face=3D"Calibri, sans-serif"><b>=
To:</b> alex.kanavin@gmail.com &lt;alex.kanavin@gmail.com&gt;<br>
</font></div>
<div dir=3D"ltr"><font style=3D"font-size: 11pt; color: rgb(0, 0, 0);" face=
=3D"Calibri, sans-serif"><b>Cc:</b> Oleksiy Obitotskyi -X (oobitots - GLOBA=
LLOGIC INC at Cisco) &lt;oobitots@cisco.com&gt;; yocto@lists.yoctoproject.o=
rg &lt;yocto@lists.yoctoproject.org&gt;<br>
<b>Subject:</b> Re: [yocto] File magic/sdk relocation</font>
<div>&nbsp;</div>
</div>
<div class=3D"BodyFragment"><font size=3D"2"><span style=3D"font-size:11pt"=
>
<div class=3D"PlainText">On closer look, it should even say:<br>
export MAGIC=3D&quot;\$OECORE_NATIVE_SYSROOT/usr/share/misc/magic.mgc&quot;=
<br>
<br>
If you can test this and confirm that it works, a patch would be welcome.<b=
r>
<br>
Alex<br>
<br>
On Mon, 19 Jun 2023 at 18:55, Alexander Kanavin via<br>
lists.yoctoproject.org &lt;alex.kanavin=3Dgmail.com@lists.yoctoproject.org&=
gt;<br>
wrote:<br>
&gt;<br>
&gt; I think there is a mistake in the file recipe (and rpm has the problem=
 too):<br>
&gt;<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; cat &lt;&lt;- EOF &gt;=
 ${D}${SDKPATHNATIVE}/environment-setup.d/file.sh<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp; export MAGIC=3D&quot;$OECORE_NATIVE_SYSROOT${data=
dir}/misc/magic.mgc&quot;<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; EOF<br>
&gt;<br>
&gt; $OECORE_NATIVE_SYSROOT should be prefixed with a \ to prevent shell<br=
>
&gt; variable expansion at build time.<br>
&gt;<br>
&gt; Can you check that the problem is then fixed?<br>
&gt;<br>
&gt; Alex<br>
&gt;<br>
&gt; On Mon, 19 Jun 2023 at 17:50, Oleksiy Obitotskyy via<br>
&gt; lists.yoctoproject.org &lt;oobitots=3Dcisco.com@lists.yoctoproject.org=
&gt;<br>
&gt; wrote:<br>
&gt; &gt;<br>
&gt; &gt; Hi,<br>
&gt; &gt;<br>
&gt; &gt; I'm working on master oe core master branch and run into problem =
with file for nativesdk (buildtools tarball).<br>
&gt; &gt; File started to use MAGIC variable initialized from .../environme=
nt-setup.d/file.sh, like<br>
&gt; &gt;<br>
&gt; &gt; /usr/local/oe-sdk-hardcoded-buildpath/sysroots/x86_64-xesdk-linux=
/usr/share/misc/magic.mgc<br>
&gt; &gt;<br>
&gt; &gt; This path relocation does not covered by relocate_sdk.sh script.<=
br>
&gt; &gt;<br>
&gt; &gt; Commit that change behavior from wrapper that use relative path t=
o environment variable with absolute path is:<br>
&gt; &gt;<br>
&gt; &gt; commit 47db876d09d9a4394048579c21d0b394450ce681<br>
&gt; &gt; Author: Chen Qi &lt;Qi.Chen@windriver.com&gt;<br>
&gt; &gt; Date:&nbsp;&nbsp; Tue Jan 17 12:06:30 2023 +0800<br>
&gt; &gt;<br>
&gt; &gt;&nbsp;&nbsp;&nbsp;&nbsp; file: export MAGIC in SDK<br>
&gt; &gt;<br>
&gt; &gt;&nbsp;&nbsp;&nbsp;&nbsp; Previously, a wrapper is used for file, w=
hich adds '--magic-file'<br>
&gt; &gt;&nbsp;&nbsp;&nbsp;&nbsp; option to it. But other components might =
use libmagic and in such<br>
&gt; &gt;&nbsp;&nbsp;&nbsp;&nbsp; case, if there's no MAGIC environent vari=
able set correctly, things<br>
&gt; &gt;&nbsp;&nbsp;&nbsp;&nbsp; do not work. For example, rpmbuild makes =
use of libmagic and it<br>
&gt; &gt;&nbsp;&nbsp;&nbsp;&nbsp; requries MAGIC to be set correctly.<br>
&gt; &gt;<br>
&gt; &gt;&nbsp;&nbsp;&nbsp;&nbsp; Signed-off-by: Chen Qi &lt;Qi.Chen@windri=
ver.com&gt;<br>
&gt; &gt;&nbsp;&nbsp;&nbsp;&nbsp; Signed-off-by: Luca Ceresoli &lt;luca.cer=
esoli@bootlin.com&gt;<br>
&gt; &gt;&nbsp;&nbsp;&nbsp;&nbsp; Signed-off-by: Richard Purdie &lt;richard=
.purdie@linuxfoundation.org&gt;<br>
&gt; &gt;<br>
&gt; &gt;<br>
&gt; &gt; I would like to ask if anybody else has such an issue. Any propos=
itions other than reverting commit?<br>
&gt; &gt;<br>
&gt; &gt; Regards,<br>
&gt; &gt; Oleksiy<br>
&gt; &gt;<br>
&gt; &gt;<br>
&gt; &gt;<br>
&gt;<br>
&gt; -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
&gt; Links: You receive all messages sent to this group.<br>
&gt; View/Reply Online (#60350): <a href=3D"https://lists.yoctoproject.org/=
g/yocto/message/60350" data-auth=3D"NotApplicable">
https://lists.yoctoproject.org/g/yocto/message/60350</a><br>
&gt; Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/99626082=
/1686489" data-auth=3D"NotApplicable">
https://lists.yoctoproject.org/mt/99626082/1686489</a><br>
&gt; Group Owner: yocto+owner@lists.yoctoproject.org<br>
&gt; Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" =
data-auth=3D"NotApplicable">
https://lists.yoctoproject.org/g/yocto/unsub</a> [alex.kanavin@gmail.com]<b=
r>
&gt; -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
&gt;<br>
</div>
</span></font></div>
</body>
</html>

--_000_PH0PR11MB4902917C3F4676900A534D44D75DAPH0PR11MB4902namp_--

