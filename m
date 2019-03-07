Return-Path: <peter.t.smith@ge.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EB03DE00CED; Thu,  7 Mar 2019 09:13:20 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	KHOP_DYNAMIC,RCVD_IN_DNSWL_LOW autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at https://www.dnswl.org/,
	low *      trust
	*      [67.231.157.48 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  1.5 KHOP_DYNAMIC Relay looks like a dynamic address
X-Greylist: delayed 2551 seconds by postgrey-1.32 at yocto-www;
	Thu, 07 Mar 2019 09:13:19 PST
Received: from mx0a-00176a03.pphosted.com (mx0b-00176a03.pphosted.com
	[67.231.157.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 53BD8E00C43
	for <yocto@yoctoproject.org>; Thu,  7 Mar 2019 09:13:19 -0800 (PST)
Received: from pps.filterd (m0048205.ppops.net [127.0.0.1])
	by m0048205.ppops.net-00176a03. (8.16.0.22/8.16.0.22) with SMTP id
	x27GOYQF002463
	for <yocto@yoctoproject.org>; Thu, 7 Mar 2019 11:30:48 -0500
From: "Smith, Peter1 (GE Renewable Energy)" <peter.t.smith@ge.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Resizing extended partition in image created with wic (poky sumo)
Thread-Index: AdTVAjS1lZ+GdpSSQMaA/FdGLMBTpQ==
Date: Thu, 7 Mar 2019 16:30:34 +0000
Message-ID: <DB5P101MB0039A83F724304074007A441DE4C0@DB5P101MB0039.NAMP101.PROD.OUTLOOK.COM>
Accept-Language: en-GB, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-dg-ref: PG1ldGE+PGF0IG5tPSJib2R5Lmh0bWwiIHA9ImM6XHVzZXJzXDIxMjUzNDY3NFxhcHBkYXRhXHJvYW1pbmdcMDlkODQ5YjYtMzJkMy00YTQwLTg1ZWUtNmI4NGJhMjllMzViXG1zZ3NcbXNnLTUzOGFkYTNiLTQwZjYtMTFlOS04MzljLWEwOGNmZGUwYTQ0NVxhbWUtdGVzdFw1MzhhZGEzYy00MGY2LTExZTktODM5Yy1hMDhjZmRlMGE0NDVib2R5Lmh0bWwiIHN6PSI1MjU1IiB0PSIxMzE5NjQ0OTgzMzA0MDE0NDMiIGg9IjlIaFBadU9KbkxuWDB4bkhNbHFhVlBXSmlsYz0iIGlkPSIiIGJsPSIwIiBibz0iMSIvPjwvbWV0YT4=
x-originating-ip: [205.173.90.27]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 6e16e7d6-ad7c-41eb-f5ea-08d6a31a3980
x-microsoft-antispam: BCL:0; PCL:0;
	RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600127)(711020)(4605104)(2017052603328)(7153060)(7193020);
	SRVR:DB5P101MB0198; 
x-ms-traffictypediagnostic: DB5P101MB0198:
x-microsoft-exchange-diagnostics: =?us-ascii?Q?1; DB5P101MB0198;
	23:acodjd+ALIBWbP5Zqm7/Jq2CsT2BnXZEMIZyuNhfi?=
	=?us-ascii?Q?uID+wICgqPBSsnrlOLlS4AhzYCs8AowM1QNkPzB+wg0gUN9v2stt4CCxnCd+?=
	=?us-ascii?Q?eHHBWW021HmxEweul9hxXjLg3EcJTZMHDqy9fj/ZbftHcugDrkCn3yuNBlyw?=
	=?us-ascii?Q?Nt25otx0yjL7jhbKGqb5hhhz1PgB0oR6XrKIPBU51dkwgIl3r3YwijypNd5U?=
	=?us-ascii?Q?txe5zJ4YtEzjZIgKDPv7u7LXrNbC3ATLtYjN3WrL1IHnhX7GO0EwnUCPra44?=
	=?us-ascii?Q?ALg+0TovRn8zKdu/YFGvgRnN8sjd0AHc0eY75LWKoBzf86RFc92D+t2f+t8L?=
	=?us-ascii?Q?9MAs8CAKNeLun+exhCCN4gZxKS/7t75pBICdobioPzJa4OOHy3aFJS3RFSeU?=
	=?us-ascii?Q?/G0BW9xjwvbgTBpWJIHegcXtr+W0JVA0KCOpuY2G97u4wtQrDvPKsHzZT3TD?=
	=?us-ascii?Q?RSK7+m7DtKT+GQaNPUt2A4IcNenQ+311Yh6AzY7v75g2ByM33iCct8siKwLR?=
	=?us-ascii?Q?UGKpSJocMQLRLUUBTsCil0UbEip22XeZ5lCL89VHh/Ciwe3U4fLITi0tp0QX?=
	=?us-ascii?Q?Op46WQi5BxRfMoeKBCagi/shxbqIUoKumi9cHCQn9kbzINWtJHgrtGQE5Mc0?=
	=?us-ascii?Q?Jl6tF8C1UCquMN4ZiX+SU5rH7hThIscsI4LsFaxd2boXT3mmCUPW3g6p73ek?=
	=?us-ascii?Q?9Cmf+H22dcrqdnBgZcvoFSZjEQxgTfDnXA5Eorw3lcCvPsQbN2RmiPGuFgaz?=
	=?us-ascii?Q?uMNGO+tMGqQMaVtWkpUcotR2q2kK+hUyXr1JvxWf+/LXLIlQ7IXV2nD+4sQ9?=
	=?us-ascii?Q?cza+nZC6wta0x3TiaaJzMrGtOntsEXsFQEgDF3dHUUh4CR0bBDkOibRzdxT8?=
	=?us-ascii?Q?pBz7N/qcdi1Qq+Qm9eG8H4RGUixRkFm7J8cos1a07n/ozXljgPLNtXzqDDVi?=
	=?us-ascii?Q?yk3j7lSeQMLXw97+Ire2DRx37hKCUYeZHH2TFXzKWuj754c3qeMxFHEKxY8b?=
	=?us-ascii?Q?7pTVxyAZqhJ3ydp6y5+K8Ot3vgl6cbDrP/mo4cvvNtd9Vh4yErdgTv/bIBlF?=
	=?us-ascii?Q?ooXXTnxhkfRQLWPiUqNVyhhswNfeUZejIsaQ4YNa6vfd4FMNbOPM2Hr35VmQ?=
	=?us-ascii?Q?zg8YEx63UEsLy+5NrZ9rY+dEh2GpjPGri1PR2syddbF80qTyq+wRFDDFh6Nh?=
	=?us-ascii?Q?u0qL2zfRnncxrg/yEZP1v7B9sGVB/f5EnFXBHajYv4Rh8CRBd7MVQxXQw=3D?=
	=?us-ascii?Q?=3D?=
x-microsoft-antispam-prvs: <DB5P101MB0198D22729DCF8BA47209F81DE4C0@DB5P101MB0198.NAMP101.PROD.OUTLOOK.COM>
x-forefront-prvs: 096943F07A
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(396003)(39860400002)(136003)(366004)(346002)(376002)(199004)(189003)(54896002)(106356001)(6306002)(102836004)(2906002)(9686003)(105586002)(8936002)(790700001)(3846002)(14454004)(6116002)(53936002)(71200400001)(71190400001)(97736004)(33656002)(66066001)(68736007)(25786009)(66574012)(26005)(486006)(6436002)(8676002)(6506007)(186003)(478600001)(1730700003)(86362001)(81166006)(81156014)(55016002)(14444005)(476003)(6916009)(7736002)(99286004)(256004)(5640700003)(2501003)(5660300002)(316002)(2351001)(74316002)(7696005);
	DIR:OUT; SFP:1102; SCL:1; SRVR:DB5P101MB0198;
	H:DB5P101MB0039.NAMP101.PROD.OUTLOOK.COM; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: ge.com does not designate
	permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 3GfJleJWsS4UEb/5mbmV4OBDYX3CbtaGwYQLDZW+DVUTXtNv4E5q7GnGSqV09zUfI6SmS/qMC3N3QONciY3G4yMOxzgZHdEg3lrTpcpJXbEiZWwJpeiLzhwlNcnc75tDD5Irulri4IpgrlaJsMIPAbS/k2FDbxOxone9qjGnYKNS+q2GlMlJVdsI/YX1Rfe6T89RLJ9UnbGwdAbpZUk5iTAsQ4LWnnfiPD5HQz0Ay0RwqpMgjzxxS5YQpUa6kL8s9EemauiJxtqpv7lhOoRsW/misnMO+s4PWxRKomzFKWNoCGWDGOmJM9exghnuc1DxD8FtT1YocfU1TDQrP6fv2fXPreYSOsUI+NpbK0FUEUwN/M0j1RSN0lQti0htY0ENIjv9tst4H13KAh/do0jIeq8YK+qm5Ug47XS9zxSu8/Y=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 6e16e7d6-ad7c-41eb-f5ea-08d6a31a3980
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Mar 2019 16:30:34.4760 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 15ccb6d1-d335-4996-b6f9-7b6925f08121
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB5P101MB0198
X-OriginatorOrg: ge.com
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
	definitions=2019-03-07_08:, , signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
	priorityscore=1501 malwarescore=0
	suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
	lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=769
	adultscore=0
	classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1810050000
	definitions=main-1903070111
X-Mailman-Approved-At: Mon, 11 Mar 2019 08:28:17 -0700
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
X-List-Received-Date: Thu, 07 Mar 2019 17:13:21 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_DB5P101MB0039A83F724304074007A441DE4C0DB5P101MB0039NAMP_"

--_000_DB5P101MB0039A83F724304074007A441DE4C0DB5P101MB0039NAMP_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

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

--_000_DB5P101MB0039A83F724304074007A441DE4C0DB5P101MB0039NAMP_
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
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
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

--_000_DB5P101MB0039A83F724304074007A441DE4C0DB5P101MB0039NAMP_--
