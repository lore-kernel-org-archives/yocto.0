Return-Path: <peter.t.smith@ge.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 27836E00D11; Fri,  8 Mar 2019 01:30:46 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.4 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	KHOP_DYNAMIC autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  1.5 KHOP_DYNAMIC Relay looks like a dynamic address
X-Greylist: delayed 5698 seconds by postgrey-1.32 at yocto-www;
	Fri, 08 Mar 2019 01:30:44 PST
Received: from mx0a-00176a03.pphosted.com (mx0a-00176a03.pphosted.com
	[67.231.149.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E174DE00D01
	for <yocto@yoctoproject.org>; Fri,  8 Mar 2019 01:30:44 -0800 (PST)
Received: from pps.filterd (m0048274.ppops.net [127.0.0.1])
	by m0048274.ppops.net-00176a03. (8.16.0.22/8.16.0.22) with SMTP id
	x287sXwj028800
	for <yocto@yoctoproject.org>; Fri, 8 Mar 2019 02:55:45 -0500
From: "Smith, Peter1 (GE Renewable Energy)" <peter.t.smith@ge.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Resizing extended partition in image created with wic (poky sumo)
Thread-Index: AdTVAjS1lZ+GdpSSQMaA/FdGLMBTpQAggfqg
Date: Fri, 8 Mar 2019 07:55:37 +0000
Message-ID: <DB5P101MB00394A574A21D1B420042725DE4D0@DB5P101MB0039.NAMP101.PROD.OUTLOOK.COM>
References: <DB5P101MB0039A83F724304074007A441DE4C0@DB5P101MB0039.NAMP101.PROD.OUTLOOK.COM>
In-Reply-To: <DB5P101MB0039A83F724304074007A441DE4C0@DB5P101MB0039.NAMP101.PROD.OUTLOOK.COM>
Accept-Language: en-GB, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-dg-ref: PG1ldGE+PGF0IG5tPSJib2R5Lmh0bWwiIHA9ImM6XHVzZXJzXDIxMjUzNDY3NFxhcHBkYXRhXHJvYW1pbmdcMDlkODQ5YjYtMzJkMy00YTQwLTg1ZWUtNmI4NGJhMjllMzViXG1zZ3NcbXNnLThkZTBkOWIyLTQxNzctMTFlOS04MzljLWEwOGNmZGUwYTQ0NVxhbWUtdGVzdFw4ZGUwZDliNC00MTc3LTExZTktODM5Yy1hMDhjZmRlMGE0NDVib2R5Lmh0bWwiIHN6PSI2MzM2IiB0PSIxMzE5NjUwNTMzNTkyMTY0MDAiIGg9InFVYmxhaVk2LzhiV0NVeHlpSVBxODA1SmViQT0iIGlkPSIiIGJsPSIwIiBibz0iMSIvPjwvbWV0YT4=
x-dg-rorf: 
x-originating-ip: [205.173.90.27]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 8f2ea890-b3c3-4f72-6058-08d6a39b73c4
x-microsoft-antispam: BCL:0; PCL:0;
	RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600127)(711020)(4605104)(2017052603328)(7153060)(7193020);
	SRVR:DB5P101MB0037; 
x-ms-traffictypediagnostic: DB5P101MB0037:
x-microsoft-exchange-diagnostics: =?us-ascii?Q?1; DB5P101MB0037;
	23:R2DzAKyzALrM7UuOUMB3MZp2ZdFyc9VMcmkgEhqmf?=
	=?us-ascii?Q?BMXj5BPg9ZRD8xFbPeaX5hla+LxKdPYjtDMqJMQuNsmQDp4EEwbHnPducD+m?=
	=?us-ascii?Q?SNdlzIjwu4wFxkfWBIdHgvFqPt5CydXrl2KZPE6L6y6Fnr6j4ybqHTfxxYtm?=
	=?us-ascii?Q?BbelxYoG7wMgN9NZeoV3qlbfMYWCP1FaW5XJUyhHn3uUabwAY9VP+D+RtuNP?=
	=?us-ascii?Q?msNM/vmQ9ij7TAveTmZeJp+bitY0Srv2s/HeGLwmkqvFcpCHL06/pKgEHhsY?=
	=?us-ascii?Q?GAUF6uEjOuyveUrGH2Zj+8WQs5VTp7G75tfQSvphm70S3jGSHrqJYMbjFFY2?=
	=?us-ascii?Q?tHzmwOG4pSehdOIuaCj8WuZh+m6j3Mz6t/KOHIyyN1a8kIzrw+e+q0X5UEqX?=
	=?us-ascii?Q?iDJIzg/Fo0khMjUqUUbTdo7/qMNYozz07AZc28CsDdiQJEseNLg4N1FfwFSY?=
	=?us-ascii?Q?7XGmJCRiyfGnro3TbG7sh8qlCleYKIyVJeF70Zb8jylSSxmOKeoqmtRdxijw?=
	=?us-ascii?Q?U7SxuTo5WpEI0Kjskc/Cp5D8ScGraLDjLbMpmcYbQvyqIy+9WtWmxevIBw66?=
	=?us-ascii?Q?uoqw+I2i81ynYdBc/CcQ2rDsGHSce9K7544jXMarWOHUs5q1HUB+2YcEHAfk?=
	=?us-ascii?Q?/cVYJBi/sr0BTcxWRufSEqhh79cRrPJD6FeO97G2kJxgbU26h9uCQeIJJApj?=
	=?us-ascii?Q?bXQnHO6yP/RJaYQ6/vs7YS/IyY03URL2O2OAA5KeZNSSp9jQE1QLPLqeQR9O?=
	=?us-ascii?Q?49mECRzWo4dnqRREO7uhhgtUwwGZ8hW72gFoa2zGEtc1sHP6dt+twe2UKage?=
	=?us-ascii?Q?v1tN+OVO9u9MD8BbHKDYnRG8Pbzixx4/gCUmORKhgXZySv9hG5wFxhU3Pv8A?=
	=?us-ascii?Q?7mBOpQ0OPJHVgwoKXulMJp8EEkKzghS/q1jZyS9cPFifwDVhM4z7+M6yxE+p?=
	=?us-ascii?Q?xRphL4mOk2QEIDDz36jqEsHeZ2pWvrjsdSZ1DdJVwVkkX4P2Q2F1OUjOnv2K?=
	=?us-ascii?Q?V0ctBB89Wc5DcL2V34t9YgraWvRU3f6MOiAas4kI0kiOlk9ueQtNIEtMnorB?=
	=?us-ascii?Q?CkMW1J+H32sTEo3aO5ynb5MKFuFUjWk7Ej5e3ITAQw6aASg7/ympos5PtQ3M?=
	=?us-ascii?Q?1MEbOwXQtG4zaUES7OVVyoFtfIj8mP7fdMHQ+ZQ0/SOyEFkkQ671YVkgY9yy?=
	=?us-ascii?Q?mFhv1apRbtK8lk++FnrC2On7XM4DzoO9YOooUBgEtfXFbt9HsKdgdbg3LO3z?=
	=?us-ascii?Q?NyPhDvO5//vOXW4J4l2YWkRlJr1l3/zVK/PA95rzJlDhY0h9/RnXqBStzESH?=
	=?us-ascii?B?UT09?=
x-microsoft-antispam-prvs: <DB5P101MB0037ABE91BC73F0A808FA7FEDE4D0@DB5P101MB0037.NAMP101.PROD.OUTLOOK.COM>
x-forefront-prvs: 0970508454
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(136003)(346002)(376002)(366004)(396003)(39860400002)(199004)(189003)(316002)(486006)(14444005)(7696005)(11346002)(53936002)(106356001)(33656002)(2351001)(6506007)(66066001)(2906002)(7736002)(446003)(186003)(476003)(68736007)(74316002)(53546011)(76176011)(99286004)(86362001)(790700001)(66574012)(14454004)(8936002)(102836004)(6436002)(6916009)(3846002)(105586002)(256004)(5640700003)(6116002)(26005)(55016002)(25786009)(1730700003)(71190400001)(81166006)(2501003)(478600001)(5660300002)(9686003)(97736004)(54896002)(6306002)(8676002)(71200400001)(81156014);
	DIR:OUT; SFP:1102; SCL:1; SRVR:DB5P101MB0037;
	H:DB5P101MB0039.NAMP101.PROD.OUTLOOK.COM; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: ge.com does not designate
	permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: yLvElN0RjptaK30uj2DrP0vMWWaIoMgobPF3TQ83VjzFsHy20vvFBtrMoV6aXMh943eQJze7aL3yGqXF1tBDUIy9BgXZy1cWbp9siyZ7fm99BmreoJ8U0Fz6iRWawwImjQjfqCZ8YkuMordcenIHo+W47lDxt0Njct0GyRHFzvkHRNGMJCWUKIiqMvc+02o/7Gq2cOxuqB89B+kvjhWWcoMKQcvCxAPvw/uTdICcE99lTELGsm5WE/rpCyAVIy2beVPDs535/XkN7uaNZe1yTtGjU6lNCDE+3dfihpgAHjE7rg6MWSZwB0HjEk2rXPh3Kl/DYgM7fB3jwkyUbsiOBefOhryxQ8evCOcEvKzg3/ZapYH3tf2kMa7Z/pzK1Kf/lkXjQZ0xEVj/7yZFaVue58G0FSm0zI1YZSkivwqDGzI=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 8f2ea890-b3c3-4f72-6058-08d6a39b73c4
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Mar 2019 07:55:37.5200 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 15ccb6d1-d335-4996-b6f9-7b6925f08121
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB5P101MB0037
X-OriginatorOrg: ge.com
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
	definitions=2019-03-08_07:, , signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
	priorityscore=1501 malwarescore=0
	suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
	lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=979
	adultscore=0
	classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1810050000
	definitions=main-1903080057
Subject: Resizing extended partition in image created with wic (poky sumo)
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
X-List-Received-Date: Fri, 08 Mar 2019 09:30:46 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_DB5P101MB00394A574A21D1B420042725DE4D0DB5P101MB0039NAMP_"

--_000_DB5P101MB00394A574A21D1B420042725DE4D0DB5P101MB0039NAMP_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Posting again as I was not a member...


From: Smith, Peter1 (GE Renewable Energy)
Sent: 07 March 2019 16:31
To: 'yocto@yoctoproject.org' <yocto@yoctoproject.org>
Subject: Resizing extended partition in image created with wic (poky sumo)

I am having trouble with resizing a partition inside of an extended partiti=
on in an image created using wic (poky sumo).

Here is the .wks file I have used:

part /mnt/boot --source bootimg-partition --ondisk mmcblk0 --label edgeos-b=
oot --active --align 4096 --fixed-size=3D100M --fstype=3Dmsdos --use-uuid
part / --source rootfs --rootfs-dir=3Dsdcard-image --ondisk mmcblk0 --use-u=
uid --uuid=3DEA2EEE0B-5C82-4817-8439-1202B5E5651A --fstype=3Dext3 --label e=
dgeos-root --align 4096 --fixed-size 1G
part /mnt/rootfs2 --ondisk mmcblk0 --use-uuid --uuid=3DEA2EEE0B-5C82-4817-8=
439-1202B5E5651B --fstype=3Dext3 --label rootfs2 --align 4096 --fixed-size =
1G
part /mnt/conf --ondisk mmcblk0 --use-uuid --fstype=3Dext3 --label edgeos-c=
onf --align 4096 --fixed-size 20M
part /mnt/data --ondisk mmcblk0 --use-uuid --fstype=3Dext3 --label edgeos-d=
ata --align 4096 --fixed-size 2947M
bootloader --ptable msdos

...and here is what parted thinks about the content of the image:

Sector size (logical/physical): 512B/512B
Partition Table: msdos
Disk Flags:

Number  Start     End        Size      Type      File system  Flags
1      8192s     212991s    204800s   primary   fat16        boot
2      212992s   2310143s   2097152s  primary   ext3
3      2310144s  4407295s   2097152s  primary   ext3
4      4415487s  10500095s  6084609s  extended               lba
5      4415488s  4456447s   40960s    logical   ext3
6      4464640s  10500095s  6035456s  logical   ext3

When I try and resize the extended partition to the end of the disk (it's a=
 16GB SDCARD) with the following command I get an error

parted /dev/... resizepart 4 -1s
bash[177]: Expand extended partition(4)... Error: Unable to satisfy all con=
straints on the partition.

I have searched the internet but can't seem to find any suggestions about w=
hat could be wrong, any ideas?

Best Regards Peter Smith

--_000_DB5P101MB00394A574A21D1B420042725DE4D0DB5P101MB0039NAMP_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
p.msonormal0, li.msonormal0, div.msonormal0
	{mso-style-name:msonormal;
	mso-margin-top-alt:auto;
	margin-right:0cm;
	mso-margin-bottom-alt:auto;
	margin-left:0cm;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
span.EmailStyle18
	{mso-style-type:personal;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
span.EmailStyle19
	{mso-style-type:personal-reply;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:72.0pt 72.0pt 72.0pt 72.0pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-GB" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Posting again as I was not a member&#8230;<o:p></o:p=
></p>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:9.0pt;font-family:&quot;Ari=
al&quot;,sans-serif;color:gray;mso-fareast-language:EN-GB"><o:p>&nbsp;</o:p=
></span></p>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div>
<div style=3D"border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0cm =
0cm 0cm">
<p class=3D"MsoNormal"><b><span lang=3D"EN-US" style=3D"mso-fareast-languag=
e:EN-GB">From:</span></b><span lang=3D"EN-US" style=3D"mso-fareast-language=
:EN-GB"> Smith, Peter1 (GE Renewable Energy)
<br>
<b>Sent:</b> 07 March 2019 16:31<br>
<b>To:</b> 'yocto@yoctoproject.org' &lt;yocto@yoctoproject.org&gt;<br>
<b>Subject:</b> Resizing extended partition in image created with wic (poky=
 sumo)<o:p></o:p></span></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I am having trouble with resizing a partition inside=
 of an extended partition in an image created using wic (poky sumo).<o:p></=
o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Here is the .wks file I have used:<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">part /mnt/boot --source bootimg-partition --ondisk m=
mcblk0 --label edgeos-boot --active --align 4096 --fixed-size=3D100M --fsty=
pe=3Dmsdos --use-uuid<o:p></o:p></p>
<p class=3D"MsoNormal">part / --source rootfs --rootfs-dir=3Dsdcard-image -=
-ondisk mmcblk0 --use-uuid --uuid=3DEA2EEE0B-5C82-4817-8439-1202B5E5651A --=
fstype=3Dext3 --label edgeos-root --align 4096 --fixed-size 1G<o:p></o:p></=
p>
<p class=3D"MsoNormal">part /mnt/rootfs2 --ondisk mmcblk0 --use-uuid --uuid=
=3DEA2EEE0B-5C82-4817-8439-1202B5E5651B --fstype=3Dext3 --label rootfs2 --a=
lign 4096 --fixed-size 1G<o:p></o:p></p>
<p class=3D"MsoNormal">part /mnt/conf --ondisk mmcblk0 --use-uuid --fstype=
=3Dext3 --label edgeos-conf --align 4096 --fixed-size 20M<o:p></o:p></p>
<p class=3D"MsoNormal">part /mnt/data --ondisk mmcblk0 --use-uuid --fstype=
=3Dext3 --label edgeos-data --align 4096 --fixed-size 2947M<o:p></o:p></p>
<p class=3D"MsoNormal">bootloader --ptable msdos<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">&#8230;and here is what parted thinks about the cont=
ent of the image:<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Sector size (logical/physical): 512B/512B<o:p></o:p>=
</p>
<p class=3D"MsoNormal">Partition Table: msdos<o:p></o:p></p>
<p class=3D"MsoNormal">Disk Flags:<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Number&nbsp; Start&nbsp;&nbsp;&nbsp;&nbsp; End&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Size&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Typ=
e&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; File system&nbsp; Flags<o:p></o:p></p>
<p class=3D"MsoNormal">1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 8192s&nbsp;&nbsp;&nb=
sp;&nbsp; 212991s&nbsp;&nbsp;&nbsp; 204800s&nbsp;&nbsp; primary&nbsp;&nbsp;=
 fat16&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; boot<o:p></o:p></p>
<p class=3D"MsoNormal">2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 212992s&nbsp;&nbsp; =
2310143s&nbsp;&nbsp; 2097152s&nbsp; primary&nbsp;&nbsp; ext3<o:p></o:p></p>
<p class=3D"MsoNormal">3&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2310144s&nbsp; 44072=
95s&nbsp;&nbsp; 2097152s&nbsp; primary&nbsp;&nbsp; ext3<o:p></o:p></p>
<p class=3D"MsoNormal">4&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 4415487s&nbsp; 10500=
095s&nbsp; 6084609s&nbsp; extended&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; lba<o:p></o:p></p>
<p class=3D"MsoNormal">5&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 4415488s&nbsp; 44564=
47s&nbsp;&nbsp; 40960s&nbsp;&nbsp;&nbsp; logical&nbsp;&nbsp; ext3<o:p></o:p=
></p>
<p class=3D"MsoNormal">6&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 4464640s&nbsp; 10500=
095s&nbsp; 6035456s&nbsp; logical&nbsp;&nbsp; ext3<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">When I try and resize the extended partition to the =
end of the disk (it&#8217;s a 16GB SDCARD) with the following command I get=
 an error<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">parted /dev/&#8230; resizepart 4 -1s<o:p></o:p></p>
<p class=3D"MsoNormal">bash[177]: Expand extended partition(4)... Error: Un=
able to satisfy all constraints on the partition.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I have searched the internet but can&#8217;t seem to=
 find any suggestions about what could be wrong, any ideas?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Best Regards Peter Smith<o:p></o:p></p>
</div>
</body>
</html>

--_000_DB5P101MB00394A574A21D1B420042725DE4D0DB5P101MB0039NAMP_--
