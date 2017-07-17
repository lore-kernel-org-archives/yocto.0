Return-Path: <Thomas.Thorne@net2edge.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A817FE00C32; Mon, 17 Jul 2017 09:29:16 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.2.135 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from EUR01-DB5-obe.outbound.protection.outlook.com
	(mail-db5eur01on0135.outbound.protection.outlook.com [104.47.2.135])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B0D3DE00C2E
	for <yocto@yoctoproject.org>; Mon, 17 Jul 2017 09:29:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=transitionnetworks.onmicrosoft.com; s=selector1-net2edge-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=fxaAJWvUOcBdcKqSRPc4pkxvnUauXFR6AE5zgntLx8I=;
	b=gy28iVGGKBpTorw7xyQ5Gwc1XvCLyhqmoxauP7gRQtdIiSBMGWhtjn5V8QqcMoKGGKPhZS2waIHDoECDjlU4lkby7+FzvptcoTbPFswU8cC+PAqbn4n2ObqZq0b9yg3ObnzqF0O3dOPbbPyRUVmd8wTv83hpRw3dhrojESphvJc=
Authentication-Results: yoctoproject.org; dkim=none (message not signed)
	header.d=none;yoctoproject.org; dmarc=none action=none
	header.from=Net2Edge.com;
Received: from [172.16.20.67] (81.128.174.58) by
	VI1PR0701MB1887.eurprd07.prod.outlook.com (2603:10a6:800:39::23) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1282.4;
	Mon, 17 Jul 2017 10:54:49 +0000
To: "Burton, Ross" <ross.burton@intel.com>
References: <1500278455-5712-1-git-send-email-pierre.ficheux@smile.fr>
	<3defd71b-ab6d-6281-943c-7864dc76633f@Net2Edge.com>
	<CAJTo0LYA2Xcr6PXm0oykX84PJR84D4Wj8A_n0A_VDKV0sKuYyA@mail.gmail.com>
From: "Thomas A. F. Thorne MEng AUS MIET" <Thomas.Thorne@Net2Edge.com>
Organization: Net2Edge Limited
Message-ID: <cf97cc3c-fa52-09e5-0a7f-d02d5715ece9@Net2Edge.com>
Date: Mon, 17 Jul 2017 11:54:44 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.2.1
MIME-Version: 1.0
In-Reply-To: <CAJTo0LYA2Xcr6PXm0oykX84PJR84D4Wj8A_n0A_VDKV0sKuYyA@mail.gmail.com>
X-Originating-IP: [81.128.174.58]
X-ClientProxiedBy: AM4P190CA0024.EURP190.PROD.OUTLOOK.COM
	(2603:10a6:200:56::34) To VI1PR0701MB1887.eurprd07.prod.outlook.com
	(2603:10a6:800:39::23)
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: e31f7221-62b8-41a6-5f99-08d4cd023f54
X-Microsoft-Antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(300000500095)(300135000095)(300000501095)(300135300095)(22001)(300000502095)(300135100095)(300000503095)(300135400095)(201703131423075)(300000504095)(300135200095)(300000505095)(300135600095)(300000506095)(300135500095);
	SRVR:VI1PR0701MB1887; 
X-Microsoft-Exchange-Diagnostics: 1; VI1PR0701MB1887;
	3:PmZtUxn1/xi5v9J9GdG51K69brDIMeSBPM3DXE5eSmnfMzEGsHKGabWSwX5AiPFhR9Kh1lgi4bwFmrGFfLKA/mxMjs5CtFzey1XdOQDB/YNa8TBO6xz+KXArPZ2tq3BnLQP3djhSUnLnx+rKLRWB/HfSNtOL7t6A4sqCuP4L0JbM0MSO5ZRS/X9tvIIWlBjdr4xL4Z/IOE9T639zrlCfGeFl0AlqY+HlGW56daBOm8qlNRDVSzMNf9HAWrFhilKG+WtWx0EtcVKNpeFejUVdnGToPExg70bXhrOZ+Km4zgG9TD+unqj480ZUyhhGupI8eSXIZIajiony13KvfLmRh73vO55uxId8M0W9rY8UcRtBPAKQsqF/4cxAtfs7uKH1ttTdk3f4du7W0u2PeAWz6DcD34ZuQYPlwk8bHU7Pf56z6HJ4UnQiIFT4i/8MZHLATAIqXFTOwX+dAC5oScxTTAyzCq4iye2AjojWx2azif1lv4PGkFDhnBpSTbbic1713i2qBCFx7yC6ZJwB5oo3aitr64XKGjZ4HjFvbcfstgaCyz07kIGaWYWlJLglZnkopPdGzLuEjQdLIAd4DUHo1C/PiPzAR8gN2tpBsbEib/jX0ZGu+xCMzOhTH2X1ArS/ttbSh3FXTkq9jj+TSjqgCMfIHRjN1R0YBTtEwJFfsxta0Pcum4MByDaNByX3G0In07eFIyibKy7210Nh7edK/w==
X-MS-TrafficTypeDiagnostic: VI1PR0701MB1887:
X-Microsoft-Exchange-Diagnostics: 1; VI1PR0701MB1887;
	25:hPYWoY9YsoWQH48960q62CZDZLLPOHOSXpHLKGLc3VQdFpX2saxGcZGvnezLz2u5spErrBCU8I3f+SC0ftcJwwILe7b4mpjiU0QpmFNNhsy6QZKbHrXPYtpifMHxu68BhgnRth545MjGtBo27iDQwhS1gDwuy5TgXbeKX2OpkfeZfdRxsdnG8cU8nvMllPvOEIXjVEMz5DXn8B+6u8DSCdo6gK2vdkdZwkE1YmK6jvfI1/SG7xuHPS1Lka7vmEeZtUMryA3uBxyWW8pBvB1JfzMgiJu8vM9YCoab3UoQMOKZb4tCMo7QM/7g0TG6LQ0ryYYLxUOBsrtvHaZMtcp6vBodbSGjkNbcjEiUy1/S3B/ka7r1Sfe8pcVpnRIbhG2gdfOW1X/oV7j/T0zz6rBw+O0aunQXNFYF2CmFv6cFWJDq1d5Q7R5fXvg/t/xXpJveeaMplhZE/0ov3DOkFuO2UftpdrdbFzWOmw1KHIVHXHO67pYN0/RpaEv22uZ3iSEvpB9DiBKp2/cRRgsmUFIZQunT1OM/uKrdib4xcNnL5E3F7FlrZU7M15kb/QgrES6b1qKrIwoMX6YTHnRp1JFC6MLU3COSrXCBvqDKtYd3EyIleMlXKT/saigmxnBy/oEwuGlfZG3ZDjYd/S9v6l7wpXzrvoZG4Qukm0fbDnJr5yPtY1+UIeKMX+SiphVjDtsJjNs/hV5aIt2Hu76qpJufxi29IvCENFiTVnI+xY2dd8hqTE97+g3xh8XsTYDa/rKShWpqooNrXqADq4d3v5+99K80uTxIrm2idWIcgGTjH+K+MFLsNxJaN8tdZZVVDxk4grmUA/Ls8Pecfm3/g1TAIX6MoJfxvFUZD4Btwp0fYUAhq130Tli0WsvmQVBq1ecC73M9Ud1EuB4LtRbYXJdjg+Fa1uPXjpSLDXVUNOR0w94=
X-Microsoft-Exchange-Diagnostics: 1; VI1PR0701MB1887;
	31:qHmj0SmIqVqjyZtUcnt7McSH2PYyOAA//qne9mPVj3P8ZD5BHJTuQFUS6ws+GLQzcVvO/V1/hKkNSu5VRvyDA1CTqw1TxC5iQmB6ZFAZ9A+bzlCjvyA4xA31cYMqZLSJp8smqaMBZrrliLCZwT1PjwLFuP4R9hdVcibIi4zg4pUbz7ytldD5E7dARoVnNN0KDHtxzYEGMHT1Q/XRxhFiNF4are7au5+iuYrvblHx8+FY2Ml0OERXUFcRpbBszexQAbZk0gXq62U9YmeTnLrA0XNcguCAZDPsaTcPXHknjt08IKZwDBq4OP808k49dKAfQFIRrg0KjpGoGa7v4g+EU/4DzGr8GNdEKYi5FN889dMA+t9/hH76U0SLN00lPoEMRkYmCkGLIMvR5tPIV6Sfq8yQI3v+OoSm4amZhXXv15BztnwdIfW9tEINu15xUGA3UqaU/jJqaYW0RP8ZAov7M2oT7NSTJbj8teIQtaLRoeLjbEoJhA8OmhjM47gj9GzMUnJNIWMFJBnja7tfNc6M552xu9SBtD2q9lhNibOG6EmGdvIzmhetLPNQSiIDy2kA2L9A+Njw8qW2tqdWaga51OGsPZhUo7EfkEGa9gO5xk5juX92a4FxxLaFZtKAYkF4jiFkCTgqIQojK6n9VujKRW+aFbUem/DWBBEFCcjz82q+XPJfruK5OtjlVfmRBbqz;
	20:ZzwIesfgT6bvRTFvvYkDBc7y1U88ka8axFTzgOymrLsXIDIrJiDaewE7OKamrebniM3UZT6geTqVXpEEVrXMeLo7ak35C0PHPlAIh5+PMSvsRcaBnScgTsrVQ9xIgnFXylLwUkejtozkEYD4Gb8bflcqefeQlHbPo2drqn4vHpA=
X-Exchange-Antispam-Report-Test: UriScan:(209349559609743)(228905959029699);
X-Microsoft-Antispam-PRVS: <VI1PR0701MB1887795B1DB3CF41F11267C2D3A00@VI1PR0701MB1887.eurprd07.prod.outlook.com>
X-Exchange-Antispam-Report-CFA-Test: BCL:0; PCL:0;
	RULEID:(100000700101)(100105000095)(100000701101)(100105300095)(100000702101)(100105100095)(6040450)(601004)(2401047)(8121501046)(2017060910075)(5005006)(10201501046)(100000703101)(100105400095)(3002001)(93006095)(93001095)(6041248)(20161123560025)(20161123555025)(20161123558100)(201703131423075)(201702281528075)(201703061421075)(201703061406153)(20161123564025)(2016111802025)(20161123562025)(6072148)(6043046)(100000704101)(100105200095)(100000705101)(100105500095);
	SRVR:VI1PR0701MB1887; BCL:0; PCL:0;
	RULEID:(100000800101)(100110000095)(100000801101)(100110300095)(100000802101)(100110100095)(100000803101)(100110400095)(100000804101)(100110200095)(100000805101)(100110500095);
	SRVR:VI1PR0701MB1887; 
X-Microsoft-Exchange-Diagnostics: =?us-ascii?Q?1; VI1PR0701MB1887;
	4:1vHHVx5b+YrkoPRDbvj92aXwcTiuQtgYO0QvtnBB?=
	=?us-ascii?Q?KdiMwymFJR8PSXCzYCpcgKomk28nmSq2zXvutt3Y0CbKeOLV99ecuT88ntvw?=
	=?us-ascii?Q?roKMl64fEUchbpCZUhRUNiDJoH4YbG0aBH5t1uKbU+PcaIqigadkyxFqCoDW?=
	=?us-ascii?Q?GehJfaVQUhPQy+b5tsdHl4uFlrpt168oJb8aqdO4eQAOhLxd9+A4ZDngysN1?=
	=?us-ascii?Q?nUR5Rn2BT0wSeEwS4p7b/2eakH3qjx5hb8uU+vT6inAbUe82OG3gaRD9Wr3X?=
	=?us-ascii?Q?qni7O/0QvvL2QPi7N1Eqsmky8omx8omUozGU57plzh4+xfYNz7nGyym1UAxO?=
	=?us-ascii?Q?fE55aQji5AD8XgWBcQdVdeXgxHUgbbEZo35L4PUfClvzUwU9EPcqz+c6mfgr?=
	=?us-ascii?Q?czV3P6REAHGibx1vb51547RJbGUMVL/t1dLJVL2jkG5WMTISQT26AIBckx/9?=
	=?us-ascii?Q?I8OgyKd9hO4aLnxmgNXg0csl/1BmQFyZZfYXUmVs1T5KA8iWbPc1rtZdRodP?=
	=?us-ascii?Q?czIaltCvQjWj3Z41YGQ2b+yK3zGR6DVMwS4DTa0U/lj/VuLKkjv9IQxWKYWi?=
	=?us-ascii?Q?LlD2hiA5nXfV1Li1Nb80EcYKk8SRnNmaQnF73iEDoGA/FNEEj1Z9HH5XGo/X?=
	=?us-ascii?Q?ACr78rZjkfwgW5B4jgeUbz8dyJZimgMo4AUTvTAqzo3PNgrXziNwihSocqV+?=
	=?us-ascii?Q?JAbzUHK3yHa30IiT6FMaArTiOIa789FOwSIPtnqLUKAPfsP3UmhFHX2tfBck?=
	=?us-ascii?Q?lhf4Wkh4gL02HsDX+TXICMSER3RHGHv5GeffoS0HTZBo9vbgGdgFemPkT6kN?=
	=?us-ascii?Q?zXgz3Xo8LB4cHaxqyVhKTjNbPdvMNA+ChXfbqbtYoxybHAPuo8FkxDjesNwk?=
	=?us-ascii?Q?fCdVPqbMskyK8LeHfwruzfba9T4I5mwIHi3QCjC1/wWDA7XOMiSfutK1zRCR?=
	=?us-ascii?Q?hnLjwImKhFf/qtjHFWeekewh7KVdnbb4g9ymZlpJj005bPF1yCy0cZB/yOPd?=
	=?us-ascii?Q?cFw35MaFbtgGJOIa+8EibKjB+/psHzQpCxWeeSQE5z7yqP3V9vFhi7aLOmTA?=
	=?us-ascii?Q?DFZ/qR6LfIxrdwZ48sqbm9DkKbAYdQDiwvVq+h6Mz0aFarPT/vap2CwriftB?=
	=?us-ascii?Q?FQQgnjDGtgFrdpPEp87fyEJe+d2kOlzI3/pygVkWV2C/tNKIgtgiuTe1UAYD?=
	=?us-ascii?Q?gbMi0Tb8sYJ5kI+qZkdhJ4FkKanI9GzphsQ9CZCZUnlJPVgxebIEyq5J8HTL?=
	=?us-ascii?Q?py5otpYkN6q0+uaOKqo0ECzuxv2PiySokcx4wdjL8lDrXe/U8xmMajcO3ZST?=
	=?us-ascii?Q?slCvq7UPHbDLj3ry1Nk1i8g=3D?=
X-Forefront-PRVS: 0371762FE7
X-Forefront-Antispam-Report: SFV:NSPM;
	SFS:(10019020)(7370300001)(4630300001)(6049001)(39450400003)(39400400002)(39410400002)(39830400002)(24454002)(4001350100001)(6486002)(5000100001)(5890100001)(7736002)(77096006)(25786009)(229853002)(86362001)(84326002)(575784001)(345774005)(83506001)(568964002)(8676002)(81166006)(66066001)(31686004)(65806001)(31696002)(42186005)(54896002)(478600001)(6916009)(21480400002)(5660300001)(4326008)(36756003)(6666003)(65826007)(2950100002)(54356999)(76176999)(236005)(54906002)(43066003)(6246003)(33646002)(2906002)(189998001)(7350300001)(6116002)(3450700001)(3846002)(53936002)(50986999)(110136004)(38730400002)(53546010)(64126003)(72206003)(24704002);
	DIR:OUT; SFP:1102; SCL:1; SRVR:VI1PR0701MB1887; H:[172.16.20.67];
	FPR:; SPF:None; MLV:sfv; LANG:en; 
X-Microsoft-Exchange-Diagnostics: =?us-ascii?Q?1; VI1PR0701MB1887;
	23:tiyENonCJ9EJFiFcY4R9GN+aQNXxCrW9EN6PW1c?=
	=?us-ascii?Q?n5q7q6Vhup5fdnxUghJ3NDRm/4vqK6+wA0tmi7o+m6hIZSR4lNAsPJfSJ/u6?=
	=?us-ascii?Q?lBp7MkOw4S5gXjDBUWMUlbBqRhS727dPYMPtQ/aQN5zo8Nib+1LgIBXnL5DK?=
	=?us-ascii?Q?khWIVjl5nt0ZEhCaLkCHJXjl7w3FBQdmLf5gS2IpEMnYQ6qApxkkn2EYc031?=
	=?us-ascii?Q?L5pAv+rVT5BRSOrgwKTySMTz7E6UHLs32DyKPoNtS/JspQb4y1LIpBndi/Rb?=
	=?us-ascii?Q?DCNqGHPvibhUECvFdvMi/ulL9SAM0NcqRBbWiCQpP7of/lX3vmG6yjc/PKQ7?=
	=?us-ascii?Q?RNNbw5/B581hKY6IeUSjX3jnELs+SA2xW1OslQ05TEbT+hQ5XrV1/c2nhY5n?=
	=?us-ascii?Q?kd5buwUNx49GPY0Tgi7vZsHBHZ/htDB5TROjnbwa4DZuNzHfF/aStK3L9LGt?=
	=?us-ascii?Q?P/3CCIgQecbCbPYIKk7WbJm39uhZG39R74d1oiE2+co4FdtQxb9rn8K3C4X0?=
	=?us-ascii?Q?CIhP/bKYMTTlsEBb3WUeQD2bjthRZsTm3g8CC2wC0xFB1D+HbQh4L43sLP9T?=
	=?us-ascii?Q?OFUzO1UCoug2g3NR8j5l2MDxrHtToMeSkJkFLFgNpmLzgqQqVfJAKsp+QmV+?=
	=?us-ascii?Q?D6dJCrJWh5YbiQGuHeD+X9zIDx0V2a4DpDHdp4OM1QlPQoRipo27VJmDkmQV?=
	=?us-ascii?Q?BUqgUYwiKLcMQV19tj0XqCuGRkqz7WVqHkQUmTlvhjIm5jktfiuOcrAjLnKx?=
	=?us-ascii?Q?/jknMvDkkgtSpWw9BX/AJmaaePmCWLt9PG5usm8ODFJYlB1c0VTOdpn5TCzS?=
	=?us-ascii?Q?mNfk8UL9MKWhezRerhles522XcLcB3Qct/ppVlppXAzFcooHCX6cKgaQa53m?=
	=?us-ascii?Q?tWQreOWU53QXCIdY/ruhPbrW0121OdO0cDoO3wmThrcWD0n1cy7QAq5zD5Yq?=
	=?us-ascii?Q?9VFLo98JfjuAlCkpPybQF6hsMtWIv5/POUac85bwBzrs7qKej8NCyDXSC/Gv?=
	=?us-ascii?Q?GUH4odNr+YygMdTFDWY5dUuw/SNSvZOsf172QHawd3DNM5LeMlgZr8IU5Mig?=
	=?us-ascii?Q?ayGheOTFE/ijCca/retUc++dUWLwfHsJ5CDAxenDDfn17IEqMb6N+tZB2uW8?=
	=?us-ascii?Q?uqHgl8/UrPNpDMKxKVGQeRMF6UqrpP/vqc8DHI6gAhjQb1GOBuaZibVZS3hW?=
	=?us-ascii?Q?aSYxvejJ7rPef3uK5pnHmeFzHrdo3WnBi8REL2pGNh+bXjZ3AfQtZWej1br1?=
	=?us-ascii?Q?vPZrBuWMzeLeti5yqEXYA82AZ4g3Ve1odaELyUQhMv/3howy9VOE6wgEzAIy?=
	=?us-ascii?Q?yec3yzbXHQnmKxppOaiQMR5RIwjvXlNNK6AeuCegiQXBygAj8K1uqXkQqrY0?=
	=?us-ascii?Q?l74xwbbdWyHXPOHwcbF6/OOjhe/Tz9aEl8K0Kn6wrYWikGC6FG6o3lxV5VH9?=
	=?us-ascii?Q?/4ni9aJmumSGHldWfirSwYTQR5ykZY4DT5Eh5ahv510d/PTjdeEPJSXWhk52?=
	=?us-ascii?Q?37+6aHUnVkQJZNw=3D=3D?=
X-Microsoft-Exchange-Diagnostics: =?us-ascii?Q?1; VI1PR0701MB1887;
	6:ZYhT2p9+uXxLoYj93fNDaj2FmHTvkN9P2Z9A+Dpc?=
	=?us-ascii?Q?HrTr14P8tOb9jclAmOdiaY9iKglNYdO1yv9zDCROS1Ly1qWvSmzTITpn0PM/?=
	=?us-ascii?Q?I4rbIzjf4+Rth+mDTSZJxAPUmvOsAr0J+GNJwYmPXfcCr/3zGP5d6J7JjqV2?=
	=?us-ascii?Q?4OgikvPNvBM22+BRNHb1tZ1WcQ7VcIYY7Jeew+dLOw5KOCOYfXXmavqVyVyn?=
	=?us-ascii?Q?nrnVy57jXWgxTQJY7zayDB2Otm6a/oHa4rUf+W/2ykM78Pbx3l83XDOkKefE?=
	=?us-ascii?Q?tovhqCH5n3heb3Aoaw+U0NDbYxP5JN06OpzV8MP56eU4GGZaFMRANJU24rB2?=
	=?us-ascii?Q?/z2ooGM8HAmHgeKNycAHKZJVphECqdK1D+3q1d4RS29nSzNIRNSVCLw/Ks+D?=
	=?us-ascii?Q?pihK8IsQ7iD7xCN9dDxjdvU4QOf6TShsFh1KvvMwlggIucmRbASjkdOE+hT+?=
	=?us-ascii?Q?gBmbftlSNCZAbteEu+CO6VCUytNJWUkRwjKUlU7w/oghlXoV6hw6nRgXbnwN?=
	=?us-ascii?Q?2+ysAP8LjwRsH/x2DGc1Op/70laOb1e67peT7GC82X5kgVMhvPXjjbvNSi5t?=
	=?us-ascii?Q?7lYx5OI0qZJ1NWTKexTK6gE4g6+QD8NF4GzaMJUYO81BGS2uBgVSaMm/VfhK?=
	=?us-ascii?Q?bjHC0NFf/S6FUReiu/0zG6dZNDUCGEvt8VhTjVAcfnJoC/dxXAnyrbOq3ert?=
	=?us-ascii?Q?O4wsaDb3f+pPExrE95S7I+hWnR7sp7ZXKA4fJNBowfQxEgswl3/qkOMsIIpo?=
	=?us-ascii?Q?NtX2mwYdMCuatSbVw1bkyJoEe8pfXl+BW0n+jFm5OsIVmytKQJfA7nDZoBG8?=
	=?us-ascii?Q?fM17V6iUA9RWKd0/4zWWV9xdVDV/rfEZXG4psZMHg1oJXg/Y/3IMnBoTgKmx?=
	=?us-ascii?Q?m/UZ8ZuwqGzDftx8D6eZss5d7knou4c/X3HoB9re6ue67WKaM5ZmP64C+SxX?=
	=?us-ascii?Q?IY82N3A4GRv5g2e+9dbJ0Ntq6xFb4hxakO6oH2eNsZ3uy4rKZ3voGPrU8wwF?=
	=?us-ascii?Q?ydA=3D?=
X-Microsoft-Exchange-Diagnostics: 1; VI1PR0701MB1887;
	5:uMSKJhYd4mvM2Sx36GlEjRkbclAFKhOK2BuZkMRhlc/Cg+xaDl2VEBLyKwYvrX+kbS5oVLuxpWzMMRMhTMSmxqMxQcYIK/gCaPMS6LBcKT9Jc6juJBEqmlRVmgyGG2cSaI2BfsM3qoM4RbeXzDvcZ6CGyZkkZtWQS52GXFF4kvSCmILcnqOomSWZ6IAOO0YIRNtpXN6i4OnCMxe83f2mt2aZiigvrOC2ufsCvgc8AJFwRvCcJ4OOU5bGJXIXfnn3zfYrnx39ubU897XbPRCXtCjU3mam8KHfU1KVOrXzJsiAu2zCmd5NReO/RzTV4p1KdesEMgy6NHFEeFe6NAoNuJ4oypqa34irjECsuc68rtqs64H/JTuv+OX/EOJPsYjGiR0QN6VLhGnGCB5so+TeYhj4hIjrjoDXAJ/blXWz6+VjdO8rMakxbMfC0bf8Y8w4lTGMwNsB+wAyc7QWLKeGcHZeUA2XMpZgO1/eFManwMZHc+EMp2IBXN7fE5flehf5;
	24:uVae4YkPCi9jua5G6/RWHe8V2Ob5rG3bFyLUxgjSDPeExtMArzQcgyh7YQd+vf6ca56cOrPmWcI47yw+aNEVH+1fB1eeO+/GNON+SM9UMcw=
SpamDiagnosticOutput: 1:99
SpamDiagnosticMetadata: NSPM
X-Microsoft-Exchange-Diagnostics: 1; VI1PR0701MB1887;
	7:YKAEjZou2q7/r8HF5QYtxjcPvcRakgHTrzWKERxImyY2xmYRznRH+QhZIJdXji/9T/B/Gxg8TpfZmvjSuQVplFyBqSikYNDDYDZmv5ZmUZLAanUpzIQBmhd27JCUhlnvuqJCBni9HzbESvcFr0x+upfdE0BkLZKoiX7mQeYqkVUlPlqpNmnsyGq0/vWizcL6NaWhlUOFS3ATmrBTYIUZkHvCWRLQQk4gntwy7Fpun5BNfSvD+ooDFHtNV12M2sqMUaRQxCYK7Zo65uxQx6har4LuTQ2CfOy3Mn1TrqPUXtBKzXdPsf0Wd0jGhpu7g5Is0jgiIXo+KL327u1vgA/5dDNIWSHtTyitQj404afSJ5855rfvl35Y8wkY1Zs7Fv4qWRLwAks6UE1FH8F+eesHkVYA/MmrYDmxPpBPS83HBF1JEs96cwTjXm4yhJNWg17IXkYfk0vKrj22tACESLW6sSmtLfSYhSZ5yWrwINpBIR1eBz7pUYGApUfUPy5U2tDTmhJ1+jQNPLBpjPHr2Gw6oHvmfO9OptD/btPSM2pJ8XuE6FEY7p7f62PQVytwUhfMR26IDQKULlsvlyLfGwJQ6A5rkSGx2qm8JbHiIo2KcNxbk1YcaZzE6QpNGkhuM4OUFuPoE8HxoAVJ+McOVxNzw2fG3BQz3FstgX/EF5NaqI0Moeo/EnG28bTMatuSL9/7YeqpCX/4Oz1h69il1dkKmZcVlNavkjmZRY/WyuX+Au9wXRE0Hr5zss8xl/hoHxe/x3UxUWQkw0k26nPECKodYZVtthO8CR7HqUtaJ7+GQJA=
X-OriginatorOrg: net2edge.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Jul 2017 10:54:49.9705 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0701MB1887
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [PATCH] Added missing CPPFLAGS/CFLAGS/LDFLAGS in sample recipe for morty branch
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: Thomas.Thorne@Net2Edge.com
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 17 Jul 2017 16:29:16 -0000
X-Groupsio-MsgNum: 37063
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature";
	boundary="AoatXVRiD1TCvqFU9NbnwEVcg79Rpecga"

--AoatXVRiD1TCvqFU9NbnwEVcg79Rpecga
Content-Type: multipart/mixed; boundary="WW7NjVKNdrV30gqUbJsJbtcNGWldbfL3u";
 protected-headers="v1"
From: "Thomas A. F. Thorne MEng AUS MIET" <Thomas.Thorne@Net2Edge.com>
Reply-To: Thomas.Thorne@Net2Edge.com
To: "Burton, Ross" <ross.burton@intel.com>
Cc: Pierre FICHEUX <pierre.ficheux@smile.fr>,
 "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Message-ID: <cf97cc3c-fa52-09e5-0a7f-d02d5715ece9@Net2Edge.com>
Subject: Re: [yocto] [PATCH] Added missing CPPFLAGS/CFLAGS/LDFLAGS in sample
 recipe for morty branch
References: <1500278455-5712-1-git-send-email-pierre.ficheux@smile.fr>
 <3defd71b-ab6d-6281-943c-7864dc76633f@Net2Edge.com>
 <CAJTo0LYA2Xcr6PXm0oykX84PJR84D4Wj8A_n0A_VDKV0sKuYyA@mail.gmail.com>
In-Reply-To: <CAJTo0LYA2Xcr6PXm0oykX84PJR84D4Wj8A_n0A_VDKV0sKuYyA@mail.gmail.com>

--WW7NjVKNdrV30gqUbJsJbtcNGWldbfL3u
Content-Type: multipart/alternative;
 boundary="------------9BE2E4B6CDA26CF69BC9B560"
Content-Language: en-GB

--------------9BE2E4B6CDA26CF69BC9B560
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

On 17/07/17 11:46, Burton, Ross wrote:
>
> On 17 July 2017 at 11:25, Thomas A. F. Thorne MEng AUS MIET
> <Thomas.Thorne@net2edge.com <mailto:Thomas.Thorne@net2edge.com>> wrote:=

>
>     helloworld.c is a C file, not a C++ file.  ${CC} should give you a =
C
>     Compiler.  CPPFLAGS should not be used or necessary for a C
>     compilation.
>
>
> CPPFLAGS is C Preprocesor, you're thinking of CXXFLAGS.
>
> Ross
Ah yes, my mistake.  Thank you for correcting me.=20

--------------9BE2E4B6CDA26CF69BC9B560
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dutf=
-8">
  </head>
  <body text=3D"#000000" bgcolor=3D"#FFFFFF">
    On 17/07/17 11:46, Burton, Ross wrote:<br>
    <blockquote type=3D"cite"
cite=3D"mid:CAJTo0LYA2Xcr6PXm0oykX84PJR84D4Wj8A_n0A_VDKV0sKuYyA@mail.gmai=
l.com">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Du=
tf-8">
      <div dir=3D"ltr">
        <div class=3D"gmail_extra"><br>
          <div class=3D"gmail_quote">On 17 July 2017 at 11:25, Thomas A.
            F. Thorne MEng AUS MIET <span dir=3D"ltr">&lt;<a
                href=3D"mailto:Thomas.Thorne@net2edge.com" target=3D"_bla=
nk"
                moz-do-not-send=3D"true">Thomas.Thorne@net2edge.com</a>&g=
t;</span>
            wrote:<br>
            <blockquote class=3D"gmail_quote" style=3D"margin:0 0 0
              .8ex;border-left:1px #ccc solid;padding-left:1ex">
              <div id=3D":1g4" class=3D"a3s aXjCH m15d5023c14377c8d">hell=
oworld.c
                is a C file, not a C++ file.=C2=A0 ${CC} should give you =
a C<br>
                Compiler.=C2=A0 CPPFLAGS should not be used or necessary =
for
                a C compilation.<br>
              </div>
            </blockquote>
          </div>
          <br>
          CPPFLAGS is C Preprocesor, you're thinking of CXXFLAGS.</div>
        <div class=3D"gmail_extra"><br>
        </div>
        <div class=3D"gmail_extra">Ross</div>
      </div>
    </blockquote>
    Ah yes, my mistake.=C2=A0 Thank you for correcting me.=C2=A0 <br>
  </body>
</html>

--------------9BE2E4B6CDA26CF69BC9B560--

--WW7NjVKNdrV30gqUbJsJbtcNGWldbfL3u--

--AoatXVRiD1TCvqFU9NbnwEVcg79Rpecga
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAEBCAAGBQJZbJd0AAoJEPXLKKkUazGAx7UIALCuH4w0uNXyPnH5hRZ6fk6U
w6mpJo579pMkhqhxPCE2U7DcrkUklc2o0IqNe7dW+oas/sYS5+PiOSVavLe6K2sK
NOEpl3grbt8pdtaBkprjo2NevQJHLRM3ds/K8Of2XLWTbOrushEKuO5HnVczL52f
iv8wYZD9GTK99HdLt0v3KQsKU0fhkgfPJMVIMdJkreOADQ81M8j+Pv1wjMzUvDuL
+KfrOApKvmuBjpwZoNQolITw6e9hMneubRakC+e53DKgycuRLdcs7g+hv6ONkMRS
2ElV+bFjHfxrqn8wjvotBR3iWKiMokVNexfVd+7/saSv7lGTu0yFg0WNIWk9KUU=
=9K5U
-----END PGP SIGNATURE-----

--AoatXVRiD1TCvqFU9NbnwEVcg79Rpecga--
