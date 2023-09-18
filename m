Return-Path: <Logan.Grosz@b9c.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7B8FC46CA1
	for <webhook@archiver.kernel.org>; Mon, 18 Sep 2023 14:44:05 +0000 (UTC)
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (NAM11-DM6-obe.outbound.protection.outlook.com [40.107.223.134])
 by mx.groups.io with SMTP id smtpd.web10.53018.1695048236631353209
 for <yocto@lists.yoctoproject.org>;
 Mon, 18 Sep 2023 07:43:57 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@b9c.com header.s=selector1 header.b=KLoUkWF5;
 spf=pass (domain: b9c.com, ip: 40.107.223.134, mailfrom: logan.grosz@b9c.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ljhpQ4m6KJmQfv7rpf1l4WsxK1OJi3ou1b3wAg5Kmp7xDoC5ttUe5WHCW7eScsBTo9IG5vlKxhinBjhzrOg4Ca1jykU+yg9iJlms4EXvaKLi0ni8TTHrI4W4iN0r9lp0sPsy+NDjWH/0uNtKo1BuGWgIeWGoKwQlvpnbhP2mo4FWnrBn2nQtW7ADbDoumbyD9hFdX0M6QVeGs4wdJiPVSEtY+mCafMH3pCo53VxUP8mobR3YHGr4FVNvyLj+zhNtYNVvP5iK8PnvcEMiB2I//X4YlRuSBnWjU3WR7PPo0mtIp220fJ/CRdVpYZE3vrOrzG+mpiT5GvKkGlEn5H9waA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=l2cQwnMKuBfZM+j8ksVQ1OwzTn6zdpPEPlbh8V8T1y8=;
 b=doiophngjDbXp0klVq6NaBOXOSubGQ62AJlnMtPN1LA+9AogV9M6yxIBuunTu81SllxmrXAjkw40+fQU+lTMpV7iqDqWQ46nC/p5luUe43TbieP8Nlo4PzyZNCZP7rnhekO9Nwt/t8ThPQjYM8NkBK+dMMHUqKfcZn4sCwFSo+773TyXpbfZCUts04dax7btv0hZKn2bh0R6kNT8N4j3sVPugvM0+6kAhhB4bb2ONZuhwTLUP1/aH6GBmwq0DcyXZ+WdCPvewN8zkrRIK+8Jvn1QUCJE5KACz5eRcfxiL4+A9zvE7/o4YtSvfJUDZDTBwpyEKf0OPIT37IFrB7Wj+w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=b9c.com; dmarc=pass action=none header.from=b9c.com; dkim=pass
 header.d=b9c.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=b9c.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=l2cQwnMKuBfZM+j8ksVQ1OwzTn6zdpPEPlbh8V8T1y8=;
 b=KLoUkWF5A1ZdapaFnJu/I0uHcWDy1iBzEsnx6m1F5ylulkQ9DKZIQPCJHWL5pN4Tgv4EMWTquXT7TLxeYlBQJV0pVb8cUhusJXxBg4i/ztdrrabmUatE6ug+3xxT0jUxNBb9J1D2ryRdTikmhNauvCO9s+vNYQXaQztVliQDN+w=
Received: from MW4PR16MB5087.namprd16.prod.outlook.com (2603:10b6:303:1be::18)
 by BL3PR16MB4394.namprd16.prod.outlook.com (2603:10b6:208:339::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6792.27; Mon, 18 Sep
 2023 14:43:54 +0000
Received: from MW4PR16MB5087.namprd16.prod.outlook.com
 ([fe80::7145:89d0:98b8:2cef]) by MW4PR16MB5087.namprd16.prod.outlook.com
 ([fe80::7145:89d0:98b8:2cef%7]) with mapi id 15.20.6792.024; Mon, 18 Sep 2023
 14:43:54 +0000
From: Logan Grosz <Logan.Grosz@b9c.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Overriding package configuration as a distro
Thread-Topic: Overriding package configuration as a distro
Thread-Index: AQHZ6j6M7yRKz/p7LEGKuaImpNR2ig==
Date: Mon, 18 Sep 2023 14:43:54 +0000
Message-ID: 
 <MW4PR16MB5087B2826350F1ECBED3E9E0BBFBA@MW4PR16MB5087.namprd16.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=b9c.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR16MB5087:EE_|BL3PR16MB4394:EE_
x-ms-office365-filtering-correlation-id: 7c2dccac-4a67-4f8e-297c-08dbb855aeb2
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 mgp/Pq7uSKTBksmWIHu/xL9c3y8APfBLXVLZYdc2wI0tmup2YW+wdzKhTmtpu/QK7r7luDlYFwTNkom69BHI26b5Ipk0XGGxyDCY+40BIDogWKD6CW6jS6TCZ1xUbtxjoTnRf31m1sVLyRwNKxEH48kMxQcRamk1HXDVDPgdSp5aDIoOiE1NVdUwZ64N4sgAISFd3TO5FwAm7rUU6DwfvLgKCf+9hv09IWu+QF4sR2B6U+vBJ5LNX2qQ8UblnaWTwc/zYyhPn/Rp95BtsvtzNg7qZjk7PieIEdFWeO6NvhT6uZeyszU0KKw9kT7odo9CcN3FavzPl7q4QfFVSRgF644qARmqrLfMapiQsfiIPprn3cql9kdO4uX+D4USct2tAKYH9EhEy6d3u2yuVzDiAa5DJB4bv1vBBYeGKk+Sv8xOvLrDcAFGRIOPpTEcHTztZbYfCt0CHsArSg1JAEKMbXgRtBoU2MBC39O9QVP3UqipcssKeoeQ6KQnhgBpe6hnf/suU8/FfaCFYF+N7i3O/UOBLxpARC6IqaGuNao6G6mNlzhWOhuE73snPMJsYfxisag3CNoGeST+g6TtBxnu6ZP/25NYbtXl82FE0RK0dC4LH5pz6iicTiowwksLiJpa
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:MW4PR16MB5087.namprd16.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(346002)(376002)(39830400003)(396003)(366004)(136003)(186009)(1800799009)(451199024)(71200400001)(55016003)(66899024)(122000001)(38100700002)(38070700005)(8676002)(8936002)(33656002)(66946007)(9686003)(76116006)(91956017)(41300700001)(6916009)(64756008)(66446008)(66476007)(66556008)(316002)(86362001)(4744005)(2906002)(5660300002)(26005)(52536014)(7696005)(6506007)(19627405001)(478600001);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?o7CUj+f9RYhN1JYL+72gg8A4VAy2EOvZ8klmp4YyxnLPsD11UEZuQpCpR1?=
 =?iso-8859-1?Q?0TQz4vnPyEaLJPDxWmQYROOGXx2uPgNkCMboe6utPZsYwUSs7lm1NuzvBr?=
 =?iso-8859-1?Q?qN4bnw2dshXxNgaHTmoL7iaNdPwsO6f+CNeW3pHwtN2RR0ihGHemOsQMvp?=
 =?iso-8859-1?Q?COBMmn6zr7TIu7cErRbZiM8ncIsdA8cSkMvpcpiZMVt/TDHZCEsKQtAjwZ?=
 =?iso-8859-1?Q?pgD9gkkAWwf4MqI3/m4AqPxUuYZL9A7mHoshoEQ521MKOiBXzJRBEdumFk?=
 =?iso-8859-1?Q?IehrkvtCTiAsDkTowimseH6ABSg/q/cUvpieRCqMnGVoviizTgyq2MUNe4?=
 =?iso-8859-1?Q?W7DPUV+uUjQbD0eW1Izd/YvI8IA9Q8UOTCGlV+fGsVaD5z99dpy/w3fyBb?=
 =?iso-8859-1?Q?tm8DqzrcneoTUAwQ4aGJhvpHOkkQKAvQyTq2KDfef2iPs75pBPZ56kcqfv?=
 =?iso-8859-1?Q?Nhv8J1OL+Fe0vODA29eJu9p0K4aSB0puL5knqNfETc7PN1Uywxy1ieztZm?=
 =?iso-8859-1?Q?ZnA+je6+kHWz4ukBxquY2jyNYqvWQ/WnQxz1ftID5TawVwMZPh73Ha2BwW?=
 =?iso-8859-1?Q?yQjdxLTT+4CUlcGdTatS7aOkyVcqXYB2YCShUfyRewtlnPwTOv8OVQx63b?=
 =?iso-8859-1?Q?2f6/IxzLA+uM3XTdS3nHB9dPoT/e3o2NkSKtZY42YWIyNysgu9xjQzvuk/?=
 =?iso-8859-1?Q?7FPcVjsEMiJswxw6KniBBhMLWRLurgv4KfmkgsETMQgFCX0qAAjuXCKfy6?=
 =?iso-8859-1?Q?b6+eqYwILayoPT8sdHqw/ERhj12ZLqID0IJgp46BG/RLEIGBvSIRK7L6ZZ?=
 =?iso-8859-1?Q?BSqekAhjDnctSdlRig9f6wKzLJGVlCB80G9sryijQ+ap9sLDPd5l+GNp7N?=
 =?iso-8859-1?Q?t3FP3KeDkn1E5EWWbovsm+CIUYV17u5PFL6Y7qhiyggvE9i2xJunA+lwKG?=
 =?iso-8859-1?Q?FIz6TMtN7NsbM5YUkrTHHuZKzAPFvw1cYcUPPY5kryaIdKykUi1CjsBUP4?=
 =?iso-8859-1?Q?9JfY4nGY6fKQHb1jc79dHF0fOGEHkDYrHAp1sAM4dSV5J/fZiiZC7UECtW?=
 =?iso-8859-1?Q?8Nj5LlvleeeXec1nuC2e2yhadPG58AB64NQw7ai/C+sxo6ovX5DQTfZbxF?=
 =?iso-8859-1?Q?0nY/p1IX4ta/5SXYzX3yh6ncOvUqEmoWElSS6D3z3GBWIPWrrkV/A79evw?=
 =?iso-8859-1?Q?2WCYbQZO+0ErDAjX5eQ3yTDqNAse/OvZ77CGkHNp7o0i2Y1M8INsXpE9xs?=
 =?iso-8859-1?Q?w9eUNyGlQBJ/QlMbIQ9Bb2YGlw5taDBL92UysJuRtAYMqhSnfjwPZPiwOg?=
 =?iso-8859-1?Q?xcjNgw5rPmyin/VQ1AsuUVKlAyj2jGMVSNe0ug2lSgVrCMlGImw6Gdd/x4?=
 =?iso-8859-1?Q?+OXcTE5o+kWhlQTlf3hYvedWWTz3+8IkktGRUn+YgtQSFGJSXIt4zL3tJX?=
 =?iso-8859-1?Q?XpAxt8YEPSWoVVLvM1ol1TWdkFkmDH94XI9jKE42BZpMRNFTTb5JtIp5o6?=
 =?iso-8859-1?Q?PaFn4es9uRhFWkMJm+7lMe+4sftRKwb62rl9kHYYRQck9cpr9xH+FKe8to?=
 =?iso-8859-1?Q?gZRkLByyys9fzAwz79LQFQjJJvXBAE/r3lUE9Iy2GoayNnmW+Fm3OB8KMu?=
 =?iso-8859-1?Q?ox1pduteSvARNfUIkXshHrkX8/DjpRf3cr?=
Content-Type: multipart/alternative;
	boundary="_000_MW4PR16MB5087B2826350F1ECBED3E9E0BBFBAMW4PR16MB5087namp_"
MIME-Version: 1.0
X-OriginatorOrg: b9c.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR16MB5087.namprd16.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7c2dccac-4a67-4f8e-297c-08dbb855aeb2
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Sep 2023 14:43:54.5166
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3ace18e3-3825-4b3e-be2a-b5c73f048d39
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: MEy31PEXUo004WoZekV/XSy/F3EY4frUA7BBIT/KDAEXAg8AvXyhRBhtjH/wTO1vyOxuIzscwvl0fi0pdgsPQg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL3PR16MB4394
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 18 Sep 2023 14:44:05 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61033

--_000_MW4PR16MB5087B2826350F1ECBED3E9E0BBFBAMW4PR16MB5087namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi, all

I have two distros in the same meta layer, "A" and "B," and a recipe which =
installs a configuration file existing in a layer elsewhere. "A" and "B" sh=
ould provide different configuration files, overriding the original configu=
ration. It seems less than ideal to create a bbappend in this scenario as t=
hat would require the bbappend to know about the various distros and even h=
andle the case where neither distro is chosen, some other "C" distro may be=
 built for. My goal is a distro-centric configuration rather than a recipe/=
package-centric one. How can I do this? Does this align with the framework,=
 or should I be looking into a different solution for this problem?

Thank you,
Logan

--_000_MW4PR16MB5087B2826350F1ECBED3E9E0BBFBAMW4PR16MB5087namp_
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
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<div data-ogsc=3D"black" style=3D"font-size: 12pt; margin: 0px; color: blac=
k; background-color: rgb(255, 255, 255);">
<span data-ogsc=3D"" style=3D"margin:0px" class=3D"ContentPasted0">Hi, all<=
/span><br class=3D"ContentPasted0">
</div>
<div data-ogsc=3D"black" style=3D"font-size: 12pt; margin: 0px; color: blac=
k; background-color: rgb(255, 255, 255);">
<br class=3D"ContentPasted0">
</div>
<div data-ogsc=3D"black" style=3D"font-size: 12pt; margin: 0px; color: blac=
k; background-color: rgb(255, 255, 255);" class=3D"ContentPasted0">
I have two distros in the same meta layer, &quot;A&quot; and &quot;B,&quot;=
 and a recipe which installs a configuration file existing in a layer elsew=
here. &quot;A&quot; and &quot;B&quot; should provide different configuratio=
n files, overriding the original configuration. It seems less than ideal
 to create a bbappend in this scenario as that would require the bbappend t=
o know about the various distros and even handle the case where neither dis=
tro is chosen, some other &quot;C&quot; distro may be built for. My goal is=
 a distro-centric configuration rather than
 a recipe/package-centric one. How can I do this? Does this align with the =
framework, or should I be looking into a different solution for this proble=
m?</div>
<div data-ogsc=3D"black" style=3D"font-size: 12pt; margin: 0px; color: blac=
k; background-color: rgb(255, 255, 255);">
<br class=3D"ContentPasted0">
</div>
<div id=3D"x_x_Signature" style=3D"font-size: 15px; font-family: &quot;Sego=
e UI&quot;, &quot;Segoe UI Web (West European)&quot;, &quot;Segoe UI&quot;,=
 -apple-system, BlinkMacSystemFont, Roboto, &quot;Helvetica Neue&quot;, san=
s-serif; margin: 0px; color: rgb(0, 0, 0); background-color: rgb(255, 255, =
255);">
<div data-ogsc=3D"black" style=3D"font-size: 12pt; font-family: Calibri, Ar=
ial, Helvetica, sans-serif; margin: 0px; color: black;" class=3D"ContentPas=
ted0">
Thank you,</div>
<div data-ogsc=3D"black" style=3D"font-size: 12pt; font-family: Calibri, Ar=
ial, Helvetica, sans-serif; margin: 0px; color: black;" class=3D"ContentPas=
ted0">
Logan</div>
</div>
</div>
</body>
</html>

--_000_MW4PR16MB5087B2826350F1ECBED3E9E0BBFBAMW4PR16MB5087namp_--

