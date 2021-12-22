Return-Path: <l.v.d.beek@student.tue.nl>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AC5FC433EF
	for <webhook@archiver.kernel.org>; Wed, 22 Dec 2021 19:22:10 +0000 (UTC)
Received: from EUR01-VE1-obe.outbound.protection.outlook.com
 (EUR01-VE1-obe.outbound.protection.outlook.com [40.107.14.94])
 by mx.groups.io with SMTP id smtpd.web09.23586.1640200927714664107
 for <yocto@lists.yoctoproject.org>;
 Wed, 22 Dec 2021 11:22:09 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@student.tue.nl header.s=selector1 header.b=MWNB573a;
 spf=pass (domain: student.tue.nl, ip: 40.107.14.94,
 mailfrom: l.v.d.beek@student.tue.nl)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=K1PC76AHOVpf7VRZ5yqvxOtqujvF2nCwqpXVNNXkl9vSFLQ2QLxd8m4kc+OhUhRz8kvHeHdcULYa+TLPZYFKkVYQNBJY0Ev2YpnWF+NCegnHpWmkwK4oBcknSJN52jMmGxRIv8+Eh2T6DCtjYI3nUmnZACiI/45beBvUjxLFAEtpHjMwVnqTyBc53NfckNXoK7gHNkA3Tk7nXs9E1HJsO7d09Mha3Ze7ECu2oF9N2h+rn3DzzQDQ+8hLU5cO7+6iq0tBG8WptU3QPFhFhjXj3Ntpdb+qxOkIBgt0ewNthSa55kTwEQ1yyzAUOmd5rNBA9pKSwaOUOWtfY5nsuwIkWg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8FTcTLMOjH7Hc3BYQy8b6+oqJgAUQnS/w6oVA5BddhQ=;
 b=c25Enh58+XSMAjfZLFvv91Xe6oJQ+gt0OkWdsrrTNSzUgwUSltFjKBvtXrbIBTfLL548lZBeWTYaHb7wabXs6e7frcEFLpeFbvdpY1SSisn7ustiowwTW9uAuPewfoMmriwjMbFhEWUg5OEfHRZI1mUZUtvJL6vrCa1CXmk3YQp63J5N1PgJytmlvG4qBCpEsSBzizfsvry4um0DcV0DPfDEiBTWX4r2nOeNJPGZmpEZNjd0Ots6nTqdhvq/Mv4SxQI6EnVI5pqwrnDidd2m0lwOnCrACvh7bGcS+VarY9UpG14U7G2CMenqDDhTUxWlMWCz1tJ4/QZ2Xx/qrBMtIg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=student.tue.nl; dmarc=pass action=none
 header.from=student.tue.nl; dkim=pass header.d=student.tue.nl; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=student.tue.nl;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8FTcTLMOjH7Hc3BYQy8b6+oqJgAUQnS/w6oVA5BddhQ=;
 b=MWNB573a+eHFXrHZPHXynzFbzzO2N+9k26UNHabp/uc5cChkKG7YQO3EcXALsnOqVVrM6zSkovZan6IHgh6+IuM06qdoZ+0ciWn8CcDz+BA69vobthCj8KRrNh2TVnb5PtU5UxzFyRMYsvud0GhN9zyj+2RcVn14f21uqKKkqZZOSQOSbdvYWOOh0RbKSkSeqLwTQA0SkDHJr11bwO7ac/w0tCOirU3mDQfCCl48RIu4zh8s0mIy5x/jUpGm9R4J4qVWjskf6Fp3VdEc78V+Q2aMrCl4M2935wLv+qpxIDtDPV163UZByK5eNiVT+w7vS3OkgB6IxwcLZAqvvZURrw==
Received: from AM0PR09MB4148.eurprd09.prod.outlook.com (2603:10a6:208:1a0::22)
 by AM4PR0902MB1730.eurprd09.prod.outlook.com (2603:10a6:200:94::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4801.17; Wed, 22 Dec
 2021 19:22:04 +0000
Received: from AM0PR09MB4148.eurprd09.prod.outlook.com
 ([fe80::3138:623c:2402:11f5]) by AM0PR09MB4148.eurprd09.prod.outlook.com
 ([fe80::3138:623c:2402:11f5%6]) with mapi id 15.20.4801.023; Wed, 22 Dec 2021
 19:22:04 +0000
From: =?iso-8859-1?Q?Beek=2C_L=E9on_van_de?= <l.v.d.beek@student.tue.nl>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Docker exec/attach not working on overlayed root
Thread-Topic: Docker exec/attach not working on overlayed root
Thread-Index: Adf3Z4TRvtrwIoKHQqyjUBRv9EpANA==
Date: Wed, 22 Dec 2021 19:22:04 +0000
Message-ID: 
 <AM0PR09MB4148CD58509BA3C7C965923BAC7D9@AM0PR09MB4148.eurprd09.prod.outlook.com>
Accept-Language: nl-NL, en-US
Content-Language: nl-NL
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f0551f00-e276-4692-4e89-08d9c580566c
x-ms-traffictypediagnostic: AM4PR0902MB1730:EE_
x-microsoft-antispam-prvs: 
 <AM4PR0902MB173050A451DD1C2EFFDC8005AC7D9@AM4PR0902MB1730.eurprd09.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 9AkcV6Mz0qovVAJbdrU4nFEu9/1vir/ERa9KKwHlPQY5M82WuhHivRSmVFwmTOTXYOwKwn+snqJNQp3NNH1VE5MVak1W1I9gkxLkncVzN1mbfSMqkAOmFNHYXL7leBF2Z1lyitsLl7EiIqV9j7hUwzaHVFHMmqgCTtuz5o8RYnpZApdY5VM2/LB8MSUUuYGh5cjvFEE/wNf68U9x+gfkVULcLUMVWulmBvQc8aWHJbDGKW7z3k7ey+9UlBPFKxuFskxpLPOflq5H4XSwwSnDBdAIwy7hierpB9LAQZ9Y7UGXzKOzmciYbV2XZqLLKpS+qCHrwwG2W6JZoODXl7rkSmHpnZmQvZar4Tb+6JLuXyOx4LmuOkYUk4mzF+E3bEhX5r681Dq9wlGWG6lfo5EbcFxdTFXmrmh/heAF83nIaWeBu1busoJZ2E/XtDo/7QQ27NxyVtSOB+OUfbQvG+tE4+AScjmV74cPmUjdRHmSTJcjg82zB9YjDeAf2VRm2AZfkoYNudaYYCdeMqog/+YM41kb5vk+rrkmezNCjbBR1h9Gi/btemfS8SjRHXB1QKEyyrvEO4mbXx9BDCJktGfU6L1khJQ/8HHV35pCUBZa8WSbWToV0iu1kAbIlybnfQUHc4fNZO0Qz1EPthiByIOuY0SQ94anzflk6zvca4PEynLZfBFBO170duPEHsuuaM6aKVG++WGUkdmJUCTJ8AmrrckwdCz+jNFphOpS91GJsMUd4/DjE7IEKfk4zA5MDw0ABUaO+HiFuwfpu0ULsNJg6k1qBX5d6MLX7ykrzxlLzu0=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM0PR09MB4148.eurprd09.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(66574015)(33656002)(122000001)(66446008)(166002)(83380400001)(38100700002)(55016003)(786003)(66556008)(66476007)(64756008)(66946007)(71200400001)(9686003)(7696005)(26005)(316002)(2906002)(52536014)(5660300002)(966005)(8676002)(6916009)(8936002)(508600001)(86362001)(186003)(6506007)(76116006)(38070700005);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?rnUoK4+1iCyears7ZK/5kJXhW96pAQ1jxoDk9bIyokjL591xdjhMSUG7Q5?=
 =?iso-8859-1?Q?jc+20Wx6vu3yHg3tGWnxuM2tzPQt1An6ahqn8IU3eT9pZPUH8EtVs0gCF1?=
 =?iso-8859-1?Q?VZvjjEqNm9RTs+kLFWIGlcSDTglOJ1jKvMB0J+Rp8OVghl0i/RnzWfds7b?=
 =?iso-8859-1?Q?MIqjdPdor5lXVUthrxusyrE+rohPmuAzZSp9O9n+HKdCsT5PmYRXjVW+/N?=
 =?iso-8859-1?Q?SKJ+URKy1BRan01x+ZgiLzbGU6620MzO5udKp+dK9Jg38Y0/ITKMaMFyXd?=
 =?iso-8859-1?Q?2/OZOIL+PUu4Vj9A/0QQBONvk3fXsrwqqtyv9TMIW+Ia71LvqdauwpBtdm?=
 =?iso-8859-1?Q?ZiIFuTDQHKWUIh3pZAN/mkyCHRHx/2Un0nw50eWc8Ad57Do3a2RjP/DHiS?=
 =?iso-8859-1?Q?Awk2OIdYIwAld0U73k2vkMIM8UpCQzj31+V72CXRHm/UMhddqn9oj8UnUq?=
 =?iso-8859-1?Q?QYUUiPwaqgqQhtkZv0F1nYnJn66pwuo7ViQYib8zT/CcKFMddRIZ2LbgfU?=
 =?iso-8859-1?Q?erGGjwnuyAUSemXkJGelEVAZRH7ES8h1afeTGABhbXiNyhwJHjnVqhquyx?=
 =?iso-8859-1?Q?U3EYwIKkkyEtDsHlmJc/rn42K0GXXq3657PJNnhFTzvLMEubEZYeXSNWrX?=
 =?iso-8859-1?Q?bbbphZbjufwM3aKTtv7zShwHN4otL3HKFWcGqilRVpJxHoX/s1WjQwdZzj?=
 =?iso-8859-1?Q?4mFgvstYtBSFz/bJIBOdQCoVLlybZ3PnCojSqIVT7I2eWV5p2k/evikvhr?=
 =?iso-8859-1?Q?FyW+qfwFq4/G9rkwznJVAPzdrVeG0Ol6CqOj0gM1oTBNH+1bUTTPwLdO/I?=
 =?iso-8859-1?Q?BS42AAgKziu7btV2q0+pbTaavyQCWPX0+guBQZOLZ7OS5QbFNt/y7QYu4z?=
 =?iso-8859-1?Q?JCe30hzC5G1STT1p4nEtawYy923ETDnOG6G+ew9RhKEI/NdoJIg4Lv3Rnd?=
 =?iso-8859-1?Q?Hjk7NdksvMEo8SlfAF6RPUotMJaBQaH4iR7wy8FPGhnGnsRaIx7LrANhiy?=
 =?iso-8859-1?Q?9eLvUTF3pKCS+ZhleRnAhgZDvPzp3hrnsCx77yYVXMY8C61xPoPLDe07Dq?=
 =?iso-8859-1?Q?vC967gzj5JhNChErqGf7pQgmhbOPT9WEtOqajtNGzpTLyxxn2ZlzK2MXzZ?=
 =?iso-8859-1?Q?layibO5VAR82MQ+8dMx5pffNei1otWyzRjxQksApAcE7y44vURv71VdC/3?=
 =?iso-8859-1?Q?CSbZK89G7cnoIUN0vQ3WAT+GjCfvmvEqoAJLGTZ16vUpYJUkHoTLLis/Ey?=
 =?iso-8859-1?Q?uQykDrQMHFQ/Zc2MrnfKQ6vRBTGK/OvwmOjHRov15C5WjVEENkpZWdKOh6?=
 =?iso-8859-1?Q?xhmfZhGVIAXRWoTaJnR1A8HidwlP6dj5eskJCyT1qvwSIRMZfD/Tdyao9y?=
 =?iso-8859-1?Q?9oDN60U1OhFWGD+53SjvUw3dK+6TZaJ+hAQ5hWTRneWNYGeWVUMcvgsBjG?=
 =?iso-8859-1?Q?qjyLaKrzcRFQHlZeAaXXd6d1PxZHnljgKQgn3Pcu6GhYYeCbmY+Qa9vkVx?=
 =?iso-8859-1?Q?skXZbO3k+ajH/STV0/utqbBSdynp+CENWOKGAFyrNEC6sGEsdHg0ClD8CA?=
 =?iso-8859-1?Q?aQvvB4TGA6DVIajOV4Zwm/Ukxd7RoHm8eqwrmJ6sKoAjJSNl/y1ymBYzOK?=
 =?iso-8859-1?Q?51m90YlLv24xcD+Kn2i99MWJIA/GDbOZzo7KY0yr3QoWzRHvZzHlLvfkmo?=
 =?iso-8859-1?Q?FAqSjjCvk3l2kVZOJB9QXBmCpHLKipKzeDeNBMKl7TGV17HEr/kSHSHHO5?=
 =?iso-8859-1?Q?+H/w=3D=3D?=
Content-Type: multipart/alternative;
	boundary="_000_AM0PR09MB4148CD58509BA3C7C965923BAC7D9AM0PR09MB4148eurp_"
MIME-Version: 1.0
X-OriginatorOrg: student.tue.nl
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AM0PR09MB4148.eurprd09.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 f0551f00-e276-4692-4e89-08d9c580566c
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Dec 2021 19:22:04.4964
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: cc7df247-60ce-4a0f-9d75-704cf60efc64
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 
 c+Sqor57/CHEUMNu6HoyCyea4r9I2b9TQIAtMC1j7nSmS1Iv+9C6mgRKLmysCXZ0sxXLqYdd63vaAwLnnpJTKs9TULjGpacvouff9592kxA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM4PR0902MB1730
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 22 Dec 2021 19:22:10 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55646

--_000_AM0PR09MB4148CD58509BA3C7C965923BAC7D9AM0PR09MB4148eurp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi Bruce,

To be honest, I am not quite sure where to ask this, as it is a very specif=
ic scenario, so feel free to forward me and my question to someone/somewher=
e else.

Situation:

  *   Yocto Hardknott running meta-virtualization, meta-raspberrypi with Do=
cker installed: Dockers works fine and is tested. Docker exec and attach wo=
rks too
  *   Now changed the rootfs to be squashfs, and an overlay of root + a RW =
ext4 partition is changed to be / at boot. This script is based on: https:/=
/github.com/cmhe/meta-readonly-rootfs-overlay
  *   Docker's overlay2 file driver does not work on top of an overlay: htt=
ps://docs.docker.com/storage/storagedriver/select-storage-driver/
  *   Solution: create /etc/docker/daemon.json with the line in it: "data-r=
oot"=3D"/docker-data". Note: /docker-data is a separate EXT4 partition on t=
he SD card.
  *   Restart machine/dockerd. The result is that we see the /docker-data i=
s now full of docker files and the containers and overlay2 folders are ther=
e. Docker info shows: Storage driver: overlay2
Containers run fine. Hello-world example runs. Alpine runs, and when starti=
ng Alpine with -it arguments I can mess around in shell all I want, everyth=
ing works.
  *   Problem: Whenever I create a container, for example: docker run -d -t=
 -name=3Dtest alpine, and later try to exec into it using "docker exec test=
 echo hello" I get this result:
Error running exec: OCI-runtime exec failed: exec failed: container_linux.g=
o:367"starting container process caused: read init-p: connection reset by p=
eer: unknown
  *   I restarted dockerd with -log-level=3Ddebug and noticed that it says:=
 attach: stderr: begin, stream copy error: reading from a closed fifo. (Sam=
e for stdout)

I removed the overlaying again and can confirm that exec and attach also wo=
rked before adding this, but on Google I can not find a single thing that c=
losely relates to the issue I am facing.

Hope any of you might be able to help me out here, I feel truly stuck on th=
is.

Kind regards,
L=E9on van de Beek

--_000_AM0PR09MB4148CD58509BA3C7C965923BAC7D9AM0PR09MB4148eurp_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:Wingdings;
	panose-1:5 0 0 0 0 0 0 0 0 0;}
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
p.MsoListParagraph, li.MsoListParagraph, div.MsoListParagraph
	{mso-style-priority:34;
	margin-top:0cm;
	margin-right:0cm;
	margin-bottom:0cm;
	margin-left:36.0pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:72.0pt 72.0pt 72.0pt 72.0pt;}
div.WordSection1
	{page:WordSection1;}
/* List Definitions */
@list l0
	{mso-list-id:70587635;
	mso-list-type:hybrid;
	mso-list-template-ids:-177804872 465866746 68354051 68354053 68354049 6835=
4051 68354053 68354049 68354051 68354053;}
@list l0:level1
	{mso-level-start-at:0;
	mso-level-number-format:bullet;
	mso-level-text:-;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:"Calibri",sans-serif;
	mso-fareast-font-family:Calibri;}
@list l0:level2
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:"Courier New";}
@list l0:level3
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Wingdings;}
@list l0:level4
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Symbol;}
@list l0:level5
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:"Courier New";}
@list l0:level6
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Wingdings;}
@list l0:level7
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Symbol;}
@list l0:level8
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:"Courier New";}
@list l0:level9
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Wingdings;}
ol
	{margin-bottom:0cm;}
ul
	{margin-bottom:0cm;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"NL" link=3D"#0563C1" vlink=3D"#954F72" style=3D"word-wrap:bre=
ak-word">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hi Bruce,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">To be honest, I am not quite su=
re where to ask this, as it is a very specific scenario, so feel free to fo=
rward me and my question to someone/somewhere else.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Situation:<o:p></o:p></span></p=
>
<ul style=3D"margin-top:0cm" type=3D"disc">
<li class=3D"MsoListParagraph" style=3D"margin-left:0cm;mso-list:l0 level1 =
lfo1"><span lang=3D"EN-US">Yocto Hardknott running meta-virtualization, met=
a-raspberrypi with Docker installed: Dockers works fine and is tested. Dock=
er exec and attach works too<o:p></o:p></span></li><li class=3D"MsoListPara=
graph" style=3D"margin-left:0cm;mso-list:l0 level1 lfo1"><span lang=3D"EN-U=
S">Now changed the rootfs to be squashfs, and an overlay of root + a RW ext=
4 partition is changed to be / at boot. This script is based on:
<a href=3D"https://github.com/cmhe/meta-readonly-rootfs-overlay">https://gi=
thub.com/cmhe/meta-readonly-rootfs-overlay</a><o:p></o:p></span></li><li cl=
ass=3D"MsoListParagraph" style=3D"margin-left:0cm;mso-list:l0 level1 lfo1">=
<span lang=3D"EN-US">Docker&#8217;s overlay2 file driver does not work on t=
op of an overlay:
<a href=3D"https://docs.docker.com/storage/storagedriver/select-storage-dri=
ver/">https://docs.docker.com/storage/storagedriver/select-storage-driver/<=
/a><o:p></o:p></span></li><li class=3D"MsoListParagraph" style=3D"margin-le=
ft:0cm;mso-list:l0 level1 lfo1"><span lang=3D"EN-US">Solution: create /etc/=
docker/daemon.json with the line in it: &#8220;data-root&#8221;=3D&#8221;/d=
ocker-data&#8221;. Note: /docker-data is a separate EXT4 partition on the S=
D card.
<o:p></o:p></span></li><li class=3D"MsoListParagraph" style=3D"margin-left:=
0cm;mso-list:l0 level1 lfo1"><span lang=3D"EN-US">Restart machine/dockerd. =
The result is that we see the /docker-data is now full of docker files and =
the containers and overlay2 folders are there. Docker info shows:
 Storage driver: overlay2<br>
Containers run fine. Hello-world example runs. Alpine runs, and when starti=
ng Alpine with -it arguments I can mess around in shell all I want, everyth=
ing works.<o:p></o:p></span></li><li class=3D"MsoListParagraph" style=3D"ma=
rgin-left:0cm;mso-list:l0 level1 lfo1"><span lang=3D"EN-US">Problem: Whenev=
er I create a container, for example: docker run -d -t &#8211;name=3Dtest a=
lpine, and later try to exec into it using &#8220;docker exec test echo hel=
lo&#8221; I get
 this result: <br>
Error running exec: OCI-runtime exec failed: exec failed: container_linux.g=
o:367&#8221;starting container process caused: read init-p: connection rese=
t by peer: unknown<o:p></o:p></span></li><li class=3D"MsoListParagraph" sty=
le=3D"margin-left:0cm;mso-list:l0 level1 lfo1"><span lang=3D"EN-US">I resta=
rted dockerd with &#8211;log-level=3Ddebug and noticed that it says: attach=
: stderr: begin, stream copy error: reading from a closed fifo. (Same for s=
tdout)<o:p></o:p></span></li></ul>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I removed the overlaying again =
and can confirm that exec and attach also worked before adding this, but on=
 Google I can not find a single thing that closely relates to the issue I a=
m facing.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Hope any of you might be able t=
o help me out here, I feel truly stuck on this.
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Kind regards,<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">L=E9on van de Beek<o:p></o:p></=
span></p>
</div>
</body>
</html>

--_000_AM0PR09MB4148CD58509BA3C7C965923BAC7D9AM0PR09MB4148eurp_--

