Return-Path: <Qi.Chen@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 01316C64ED6
	for <webhook@archiver.kernel.org>; Mon, 27 Feb 2023 13:28:43 +0000 (UTC)
Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com [205.220.166.238])
 by mx.groups.io with SMTP id smtpd.web11.89758.1677504514657220916
 for <yocto@lists.yoctoproject.org>;
 Mon, 27 Feb 2023 05:28:34 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=ioqc9Yob;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.166.238, mailfrom: prvs=14227e6c16=qi.chen@windriver.com)
Received: from pps.filterd (m0250810.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 31RDBE0a027003;
	Mon, 27 Feb 2023 05:28:16 -0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com; h=from : to :
 subject : date : message-id : references : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=PPS06212021;
 bh=XAQbkmqOVVhf/QBH32XSxwXio0rgELVsN9Coip3bbyY=;
 b=ioqc9YobqKRrxatab9szRHUHUUXIP0Z244y6PI77cldVEFd0GIKOmniHdIcyRxdMXmdd
 rsLd197Ca1zztCal35EBbkfQRejvJeSVcbCTpqkVS5sE19+9B8sbQV/X3eaEjfpTSy2f
 PKB6X6EW0P4Ln6rInx6lv8KhOZSSxxg5I+oaDfTyQG/dEcQ3CmbERihzqJwHbq7KREfF
 NS8f+MkK3hjgT0OAbIRF+JNZD7SyEuFijhqQ5QB2QUbuLX611iX1rdhmm4Y21lvPzEu/
 ZZKApxI5Xs3z8MP5Ta6x/7V0VN2tZF6FCjQ4TqjYHvOtVD/SYzN6qwXd1P3BlOgD4zfT rw== 
Received: from nam04-dm6-obe.outbound.protection.outlook.com (mail-dm6nam04lp2047.outbound.protection.outlook.com [104.47.73.47])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3nyeg89u72-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 27 Feb 2023 05:28:16 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nInZ+cz8nbePqEQSQmI3v3ll8uHbumR8W+8eR9FWkU3IGA1TlIsKJwOhn/xiAO/1um2GXsGPYgM65+cTZp5yo0nt227zj3+fxhw+R0HvvuwO9ofCNPuPpqJFvZhRR+ZQo1R5WhUiTfZ2PZifeLOMZUnWXfr5hYqkR33nhXKRZI6M2UWOnZaAra24YoGoTjnwvXmmlrx2n65fh7MABpUHF9OoDbqJC5+j07a6acZZ7gd0rnvzvUDe3IPDet8c7UPPEJV940GdLERU2h2JgBizKFVo83mU5bHL2v+sj+1DaPnyBfUnv22oa4ep1SSY/Qg3lHcgtzf9wxKA476TJ9GvvA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XAQbkmqOVVhf/QBH32XSxwXio0rgELVsN9Coip3bbyY=;
 b=dtYXviADIL3+gGABTmu7gwc095WTl7JlHhV2s1N4nlOG0fIX5UbD7ELwxIT63nbxyzXMyaU9vZ2dcDZYG/jTDpDDU2sl5ajIQdiCRJdyPQr8wliGloSH5aU8h5Ez68v8M4pnHn67Tz6WJ6Dgq8qiWGFc7Lj0t89fEWzGz5FBvyQFL3iaoX0M+xY0roz0Z1dzEtqEyDDh0VEyzpZwXaKh0UrIC8TbYe74o5r3FK2aQSJe6bOlzkbx82puZUM3AZIVb0HW1P9URCwJS/bcILu8hILV4PgZm0JYfcyfekXA1gHqTAC0XDuRi5DpwFxbh9+yzc2boFajGhuc8C6iwaRNHw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from CO6PR11MB5602.namprd11.prod.outlook.com (2603:10b6:303:13a::5)
 by IA1PR11MB6265.namprd11.prod.outlook.com (2603:10b6:208:3e7::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6134.29; Mon, 27 Feb
 2023 13:28:13 +0000
Received: from CO6PR11MB5602.namprd11.prod.outlook.com
 ([fe80::7785:8a09:29b7:44a3]) by CO6PR11MB5602.namprd11.prod.outlook.com
 ([fe80::7785:8a09:29b7:44a3%5]) with mapi id 15.20.6134.021; Mon, 27 Feb 2023
 13:28:13 +0000
From: "Chen, Qi" <Qi.Chen@windriver.com>
To: Konstantin Kletschke <konstantin.kletschke@inside-m2m.de>,
        "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: RE: [yocto] Setup a static IP address - systemd
Thread-Topic: [yocto] Setup a static IP address - systemd
Thread-Index: AQHZSpQu0ISHPXedSk6D1s4joWyALK7iyOKg
Date: Mon, 27 Feb 2023 13:28:13 +0000
Message-ID: 
 <CO6PR11MB56021FCB6DCA1BDB44568C33EDAF9@CO6PR11MB5602.namprd11.prod.outlook.com>
References: <Y/yCR/KJI6NNyimz@Hephaistos.inside-m2m.de>
In-Reply-To: <Y/yCR/KJI6NNyimz@Hephaistos.inside-m2m.de>
Accept-Language: en-US, zh-CN
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CO6PR11MB5602:EE_|IA1PR11MB6265:EE_
x-ms-office365-filtering-correlation-id: 8af9a5f5-d389-4f25-31a0-08db18c67a15
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 ynMOhvLYDWu7pJQ1TQKtr0ZIA4r6lQBRyp5YeUSW0MzsixhvRWXC+WFwLCWlE+mXeQx428xb/ZtOSj2XygrDrZFp8/vmaDD4QJI7IkMqAcn1uIRjcH4AJjgTRhogV+eXNanTYPcu02iA5jShHY24RHMzRR/07yOIqEZPUs7Nu9Tx/G7Qy1UEVCgOy8KUIioJxt+toB6GiXIgc1YhcG63iIrV+Rps05qIviDPV+hGrIIc4bPy+I8Yac3/yaWkzjGN+5B1fsF0MFp00iNre2odrOjvj679gDOjHrNzeqIUFGVOxZmfsqB3WCiO0SpAEMAfopKFG1uQq9+QuJoiPj9xL9KwXr3NGsZdb50cXy4d4LoUUqClqI/BRNGg4Pb9wi4SqkfHmVTlKdcz+CoIvzikbhva/vcXUB4hvDQIWT3XGNiVuKIt52DHwPuf8EhqmZjnsLlKl3ywS52Xuia/AbwY3ZHm5zMZ+G0/AAqkqFSBGXSasaVr879g464Q+wbU7jXPrN4E/712cdxWMhDqwwd82DCITW7lqOgMTtttmwbf7SWX5CCqQYq8OLz7/act+dqJFrHYSyuw8CGP+nXRPg1N0seqwLiBvsulje23TtScmxISw6TR9ZIvifDl9bdql3gJF5SmgmfyRwKhLwb/IE3Xe21kgf2odlMTjNpqi9P8H1S155BZXrIQrWsvExL33you
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO6PR11MB5602.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230025)(4636009)(396003)(136003)(346002)(366004)(376002)(39850400004)(451199018)(38070700005)(52536014)(66946007)(86362001)(316002)(966005)(66476007)(66556008)(76116006)(55016003)(110136005)(71200400001)(33656002)(7696005)(478600001)(66446008)(41300700001)(53546011)(8676002)(6506007)(9686003)(26005)(186003)(64756008)(2906002)(38100700002)(8936002)(66574015)(122000001)(5660300002)(83380400001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?fdTiRCHHs4seJNYw0lGC3gbS2Nog9BOCGwoV3ziv+S6+f64eQA59KQ+hw9?=
 =?iso-8859-1?Q?WdCN5cUp0ela5zUAIxVXtjX6Lmp7lARjlcR+G2emv44yAy8wOSpHGmIiYg?=
 =?iso-8859-1?Q?OAlBc7RIZGdEAd3FJoP46ifbGbX3P7ch2HjITa+P4320ruA32YYfKQpgWW?=
 =?iso-8859-1?Q?5GmP8Pkoc7cUaFPW6Gb2pRQC1bUp/EIBrZkUXha0hXcKbfkgwcizi3X1+2?=
 =?iso-8859-1?Q?Aj+TmpQ+xzSEul0MOAfUE60m4ddCq3cCf7LfjZq9x+uLsGeYD7cR06lSdv?=
 =?iso-8859-1?Q?CqgnWC8dIi1z08zElMl4UK73qqBoJ967QBQBxDVs43KHgVEFJbO2MAvvQi?=
 =?iso-8859-1?Q?vYL2qwtc7PHcE3GKFBhBiqQpTXEwb4AjiVRoixMFMLu/zK7Jb36sUE5uNX?=
 =?iso-8859-1?Q?nXrFm39TggCrZ5Wg1B+pDpDEhe6enfmLNc6q729q2Yjf8BWZfhbVsJmkdC?=
 =?iso-8859-1?Q?Tg1twlTdSBffgA13rJsvu9+K/jxwfUSEtaXPpWstrWlBgT2vP8IC+/x2Zv?=
 =?iso-8859-1?Q?j6fgYIqLh71iVdebE5E6uoBlFnPKro4IFEkp506G/NXY0eR5EvqalUAnEt?=
 =?iso-8859-1?Q?9qM7lPwRf8iKRGExv1yXbWuKaC6hbQ9K0G61F3GlnHbwHWnZF2KNo8Bgk4?=
 =?iso-8859-1?Q?EshNnaCH7sQDYOH3BalVdpRzcvR3xoNF9JnVoEBiQPMXFp9OHHqmR/UUtD?=
 =?iso-8859-1?Q?dzG9YaNbPK9XZwYMs9CXJkyVr5A4PpfyjSG/ad7tcCwgpCzilXbWw99yp3?=
 =?iso-8859-1?Q?FDgC9CprW0AcNkf2Os1dXCPsi4X6wWztsR7gEc2j113gihG8G+xut0wShF?=
 =?iso-8859-1?Q?poOmV092gj/CT0cJvyhg5vAgT7nkzX0RM2N79Fb57dOoK92AtOjaN1vs0V?=
 =?iso-8859-1?Q?WumAQrpOGBc6NcmW350/v+7og4QLKC5l/VvCulHNNd56YsmdO918/N6jXD?=
 =?iso-8859-1?Q?zxOQybXZ8K2w2WaOEl0UKQCML6tedNOOtQkQgXutk9eh4ROyCYEWj1dtXn?=
 =?iso-8859-1?Q?LkT8V2j5CkgiiXW8Bm+UlibvWlpRZ1E4bcoyO+X7huWUa7/pYVlo1P635k?=
 =?iso-8859-1?Q?rALMZDjPnvFwF7Z8G6X8FtNolhPjpEGH6phl1aS9Do+vHASRy8d61iQSNj?=
 =?iso-8859-1?Q?4LR8yKN89Hyh6QVnTzoTre7ZI4TxBdmADVWigShX+6pLvTkGSbFb+REl7A?=
 =?iso-8859-1?Q?dROgOr8Ou5fR92rperH73leYhv3BVU68se3vpPhX56EtQB/udKXoWgjiZi?=
 =?iso-8859-1?Q?Rah8Yx8FlpnBq43CLOaBFEE4ECgdheXZ6/qQR8TKC4Yx73LIu3QL+WZYCK?=
 =?iso-8859-1?Q?RNzFM/iU7xuG/462SIh4CBWIHFNCYeRZCeJ89vcuhiP0hLnb5mVRbG2JHv?=
 =?iso-8859-1?Q?7DZ8luaNqM1FF8ombxvt/MDxnaF2ke5dZf8KhSQXIj84A4afrClmb0MFTv?=
 =?iso-8859-1?Q?d8zIX068fpbH51yJQVL06IohNif3jHFrMjNxMsxfa4Y+BYn3psc0R4ULbP?=
 =?iso-8859-1?Q?IcMUkS6aGwzABm57EqhWKKpcMff7eZu5K5ToPb0CUouNXbaloplTrFNQ7q?=
 =?iso-8859-1?Q?rYggsc/BTcUuim6TRs3Bkm8kW4vho4oDg5tUajdUFYGGducOs5DtAYBboE?=
 =?iso-8859-1?Q?gY6RfaBxQmFhR/6D7CAKU33RWvI6JMTLQa?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO6PR11MB5602.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8af9a5f5-d389-4f25-31a0-08db18c67a15
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Feb 2023 13:28:13.3701
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: HI7ApGi91c4DICqURvHcoXFWZFLPeyNqTHfaSxSJWCVFps5DT2KMCykM4Lu7wJ0SqhoKui0QUKitdU5sili2AQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6265
X-Proofpoint-GUID: oHMQriEhtXeyQiUBSn4qey8IIfCREuL4
X-Proofpoint-ORIG-GUID: oHMQriEhtXeyQiUBSn4qey8IIfCREuL4
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.219,Aquarius:18.0.930,Hydra:6.0.562,FMLib:17.11.170.22
 definitions=2023-02-27_10,2023-02-27_01,2023-02-09_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 suspectscore=0 bulkscore=0
 adultscore=0 mlxscore=0 priorityscore=1501 spamscore=0 lowpriorityscore=0
 phishscore=0 impostorscore=0 clxscore=1011 malwarescore=0 mlxlogscore=999
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2212070000
 definitions=main-2302270104
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 27 Feb 2023 13:28:42 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59307

I think you're having a higher priority configuration file taking effect.
Check /lib/systemd/network and /run/systemd/network.
Maybe renaming your configuration file to 00-eth0.network would solve the p=
roblem.

Regards,
Qi

-----Original Message-----
From: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org> On Behalf=
 Of Konstantin Kletschke
Sent: Monday, February 27, 2023 6:13 PM
To: yocto@lists.yoctoproject.org
Subject: [yocto] Setup a static IP address - systemd

Dear yocto, community,

I have a yocto build running on a Beaglebone Black with systemd enabled.
No /etc/init.d, no /etc/network/interfaces.

How do I set up a static IP Address for eth0?
The system always does an udhcpc request and uses that.

I have
systemd-networkd.service loaded active running and tryed the following file=
 in /etc/systemd/network:

# cat eth0.network
[Match]
Name=3Deth0

[Network]
Address=3D10.2.3.4/24
Gateway=3D10.2.3.1
DNS=3D1.1.1.1


Kind Regards
Konstantin


--
INSIDE M2M GmbH
Konstantin Kletschke
Berenbosteler Stra=DFe 76 B
30823 Garbsen

Telefon: +49 (0) 5137 90950136
Mobil: +49 (0) 151 15256238
Fax: +49 (0) 5137 9095010

konstantin.kletschke@inside-m2m.de
http://www.inside-m2m.de=20

Gesch=E4ftsf=FChrung: Michael Emmert, Derek Uhlig
HRB: 111204, AG Hannover


