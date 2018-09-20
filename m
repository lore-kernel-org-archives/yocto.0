Return-Path: <Jack.Fewx@dell.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A47F9E0053F; Thu, 20 Sep 2018 13:41:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [68.232.149.214 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from esa4.dell-outbound.iphmx.com (esa4.dell-outbound.iphmx.com
	[68.232.149.214])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 75F1DE00474
	for <yocto@yoctoproject.org>; Thu, 20 Sep 2018 13:41:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
	d=dell.com; i=@dell.com; q=dns/txt; s=smtpout;
	t=1537476067; x=1569012067;
	h=from:to:cc:subject:date:message-id:references:
	in-reply-to:content-transfer-encoding:mime-version;
	bh=ShPIEGeph7n/HkDFLNl8xaih87gUbbN+LnZ9lQUkLGw=;
	b=ytH9fIyziJIePorvFe7NSKXqdLH6yRtiELDOtdOkTmnzYnUWiKRauZI+
	sbKNliB3z/AP5H2ZBW+x5l98pOxBeTRrCEg1Lo08uc7HaEPL3hSlQUd70
	g+GecGWseal/SAJdhBx4hY0DwpFR6vmSfVY9hoL2wur6WWP0rm/XLA7IL w=;
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A2EUAAARBaRbhyWd50NbGQEBAQEBAQE?=
	=?us-ascii?q?BAQEBAQcBAQEBAYFSg2ooCoxdi1KCDZZOgXoLhGwCg0MhNhYBAwEBAgEBAgE?=
	=?us-ascii?q?BAhABAQEKCwkIKS+CNSKCYgEBAQECARIVEzkGBQsCAQgYHhBXAgQBDQUIGoJ?=
	=?us-ascii?q?/gXoImSOJVwEBAYFoM4oMim+CF4QkilYCiCoShTmBOI1BBwKQHB+PIpROAgQ?=
	=?us-ascii?q?CBAUCFIFJCoF9cIM8gjOOIW+MVIEeAQE?=
X-IPAS-Result: =?us-ascii?q?A2EUAAARBaRbhyWd50NbGQEBAQEBAQEBAQEBAQcBAQEBA?=
	=?us-ascii?q?YFSg2ooCoxdi1KCDZZOgXoLhGwCg0MhNhYBAwEBAgEBAgEBAhABAQEKCwkIK?=
	=?us-ascii?q?S+CNSKCYgEBAQECARIVEzkGBQsCAQgYHhBXAgQBDQUIGoJ/gXoImSOJVwEBA?=
	=?us-ascii?q?YFoM4oMim+CF4QkilYCiCoShTmBOI1BBwKQHB+PIpROAgQCBAUCFIFJCoF9c?=
	=?us-ascii?q?IM8gjOOIW+MVIEeAQE?=
Received: from mx0b-00154901.pphosted.com ([67.231.157.37])
	by esa4.dell-outbound.iphmx.com with ESMTP/TLS/AES256-SHA256;
	20 Sep 2018 15:41:06 -0500
Received: from pps.filterd (m0144104.ppops.net [127.0.0.1])
	by mx0b-00154901.pphosted.com (8.16.0.22/8.16.0.22) with SMTP id
	w8KKc6NK002291
	for <yocto@yoctoproject.org>; Thu, 20 Sep 2018 16:41:05 -0400
Received: from esa4.dell-outbound2.iphmx.com (esa4.dell-outbound2.iphmx.com
	[68.232.154.98])
	by mx0b-00154901.pphosted.com with ESMTP id 2mmf3p973r-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256
	verify=FAIL)
	for <yocto@yoctoproject.org>; Thu, 20 Sep 2018 16:41:05 -0400
From: <Jack.Fewx@dell.com>
Received: from ausxippc110.us.dell.com ([143.166.85.200])
	by esa4.dell-outbound2.iphmx.com with ESMTP/TLS/DHE-RSA-AES256-SHA256;
	21 Sep 2018 02:41:04 +0600
X-LoopCount0: from 10.166.132.133
X-IronPort-AV: E=Sophos;i="5.54,281,1534827600"; d="scan'208";a="705701563"
To: <seebs@seebs.net>, <ross.burton@intel.com>
Thread-Topic: [yocto] [pseudo] Pseudo 1.8+ xattr sqlite corruption
Thread-Index: AdQ4sn6k0pB0JFSoSnqNizqd3RyNYQBa03cAAABmVBAADCzFgAAKVFJg//+1TICAAE9nsP/V3zawgFSk7ACAAAHaAIAAAT4AgADuRoCAAhOFAIAAPiFA
Date: Thu, 20 Sep 2018 20:41:02 +0000
Message-ID: <7fa6c890755b4712828365593fcfe088@AUSX13MPC104.AMER.DELL.COM>
References: <6a084eda5fcb4423a647bb998471e26d@AUSX13MPC104.AMER.DELL.COM>
	<CANNYZj8A22yL9VU0Wp3OOXwZU6yR=fQXqeWSfKykDp_kkL6ZGQ@mail.gmail.com>
	<6bdfdff49ca04924979eba1da729d7e1@AUSX13MPC104.AMER.DELL.COM>
	<ca06666cf0377fda72a45581f14a2ba48591dc9b.camel@gmail.com>
	<0c3dff3db46a4a83a73a4ffe1c83535d@AUSX13MPC104.AMER.DELL.COM>
	<340e2fcca899a6691605df89eb89f0e7e7802916.camel@linuxfoundation.org>
	<767f0527074648f48702fedcdb928152@AUSX13MPC104.AMER.DELL.COM>
	<20180918160944.43679aec@seebsdell>
	<CAJdd5Gb64JqHY3gv=r+_ZnKpDzO63CLpOF0fP8MQy_Dd_bshQQ@mail.gmail.com>
	<20180918162048.35454f8d@seebsdell>
	<CAJTo0LZ1qDr2DAFWJcHBrzWWwERYh-6eSiXNO5gcJwT=HXMb-w@mail.gmail.com>
	<20180920141600.1e7fae12@seebsdell>
In-Reply-To: <20180920141600.1e7fae12@seebsdell>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titusconfig: Internal Use 04051212
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvIiwiaWQiOiIxMDk2YTZhNi03NWNhLTQ5NGItYWY3Yi04YjI0NmQzMjJmY2UiLCJwcm9wcyI6W3sibiI6IkNsYXNzaWZpY2F0aW9uIiwidmFscyI6W3sidmFsdWUiOiJJbnRlcm5hbCBVc2UifV19LHsibiI6IlN1YmxhYmVscyIsInZhbHMiOltdfSx7Im4iOiJFeHRlcm5hbENvcnJlc3BvbmRlbmNlIiwidmFscyI6W3sidmFsdWUiOiJObyJ9XX1dfSwiU3ViamVjdExhYmVscyI6W10sIlRNQ1ZlcnNpb24iOiIxNi4yLjExLjAiLCJUcnVzdGVkTGFiZWxIYXNoIjoiVlpkc1I0NkhpRlRxbDk5UWw1U3lHXC95aEdCVWRKbktZc3JPZHdLUzNPQTg9In0=
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.143.242.75]
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
	definitions=2018-09-20_11:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
	priorityscore=1501
	malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0
	clxscore=1015 lowpriorityscore=0 mlxscore=0 impostorscore=0
	mlxlogscore=999 adultscore=0 classifier=spam adjust=0 reason=mlx
	scancount=1 engine=8.0.1-1807170000 definitions=main-1809200200
Cc: yocto@yoctoproject.org
Subject: Re: [pseudo] Pseudo 1.8+ xattr sqlite corruption
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
X-List-Received-Date: Thu, 20 Sep 2018 20:41:08 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Dell - Internal Use - Confidential =20

> On Wed, 19 Sep 2018 12:33:37 +0100
> "Burton, Ross" <ross.burton@intel.com> wrote:
>
> > Is anyone actually writing a patch?
>
> I have a tentative fix for this checked into master, I don't know
> whether it actually works because I don't have any inodes over 2^63.
>
> It doesn't seem to have *broken* anything, though in casual testing.
> It's not carefully tested.
>=20
> -s

My sincerest apologies, my "maths" failed me.  Number was correct, bound we=
re wrong.  Any inodes above 0x7FFF FFFF (2147483647) fail... HOWEVER that's=
 not 64-bits, that's 32-bits! (DUH JACK!)

Okay, so I found the problem, and I have a patch for it.  Throughout the ps=
eudo_db.c code, the handling of the msg->ino objects is not consistent.  Ma=
ny get passed to the sqlite3_bind_int64 function, but NOT ALL.  9 instances=
 in the code, including all of them in the xattr code use only sqlite3_bind=
_int which truncates the integers to signed 32-bits.

Fixing those 9 entries resolves the issue. Patch follows:

Index: git/pseudo_db.c
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
--- git.orig/pseudo_db.c
+++ git/pseudo_db.c
@@ -1512,9 +1512,9 @@ pdb_clear_xattrs(pseudo_msg_t *msg) {
 		}
 	}
 	sqlite3_bind_int(delete, 1, msg->dev);
-	sqlite3_bind_int(delete, 2, msg->ino);
+	sqlite3_bind_int64(delete, 2, msg->ino);
 	sqlite3_bind_int(delete, 3, msg->dev);
-	sqlite3_bind_int(delete, 4, msg->ino);
+	sqlite3_bind_int64(delete, 4, msg->ino);
 	rc =3D sqlite3_step(delete);
 	if (rc !=3D SQLITE_DONE) {
 		dberr(file_db, "delete of unused xattrs may have failed");
@@ -1549,9 +1549,9 @@ pdb_copy_xattrs(pseudo_msg_t *oldmsg, ps
 		}
 	}
 	sqlite3_bind_int(copy, 1, msg->dev);
-	sqlite3_bind_int(copy, 2, msg->ino);
+	sqlite3_bind_int64(copy, 2, msg->ino);
 	sqlite3_bind_int(copy, 3, oldmsg->dev);
-	sqlite3_bind_int(copy, 4, oldmsg->ino);
+	sqlite3_bind_int64(copy, 4, oldmsg->ino);
 	rc =3D sqlite3_step(copy);
 	if (rc !=3D SQLITE_DONE) {
 		dberr(file_db, "copy of xattrs may have failed");
@@ -1581,7 +1581,7 @@ pdb_check_xattrs(pseudo_msg_t *msg) {
 	}
 	int existing;
 	sqlite3_bind_int(scan, 1, msg->dev);
-	sqlite3_bind_int(scan, 2, msg->ino);
+	sqlite3_bind_int64(scan, 2, msg->ino);
 	rc =3D sqlite3_step(scan);
 	if (rc =3D=3D SQLITE_ROW) {
 		existing =3D (int) sqlite3_column_int64(scan, 0);
@@ -2471,7 +2471,7 @@ pdb_get_xattr(pseudo_msg_t *msg, char **
 	}
 	pseudo_debug(PDBGF_XATTR, "requested xattr named '%s' for ino %lld\n", *v=
alue, (long long) msg->ino);
 	sqlite3_bind_int(select, 1, msg->dev);
-	sqlite3_bind_int(select, 2, msg->ino);
+	sqlite3_bind_int64(select, 2, msg->ino);
 	rc =3D sqlite3_bind_text(select, 3, *value, -1, SQLITE_STATIC);
 	if (rc) {
 		dberr(file_db, "couldn't bind xattr name to SELECT.");
@@ -2533,7 +2533,7 @@ pdb_list_xattr(pseudo_msg_t *msg, char *
 		}
 	}
 	sqlite3_bind_int(select, 1, msg->dev);
-	sqlite3_bind_int(select, 2, msg->ino);
+	sqlite3_bind_int64(select, 2, msg->ino);
 	do {
 		rc =3D sqlite3_step(select);
 		if (rc =3D=3D SQLITE_ROW) {
@@ -2587,7 +2587,7 @@ pdb_remove_xattr(pseudo_msg_t *msg, char
 		}
 	}
 	sqlite3_bind_int(delete, 1, msg->dev);
-	sqlite3_bind_int(delete, 2, msg->ino);
+	sqlite3_bind_int64(delete, 2, msg->ino);
 	rc =3D sqlite3_bind_text(delete, 3, value, len, SQLITE_STATIC);
 	if (rc) {
 		dberr(file_db, "couldn't bind xattr name to DELETE.");
@@ -2628,7 +2628,7 @@ pdb_set_xattr(pseudo_msg_t *msg, char *v
 		}
 	}
 	sqlite3_bind_int(select, 1, msg->dev);
-	sqlite3_bind_int(select, 2, msg->ino);
+	sqlite3_bind_int64(select, 2, msg->ino);
 	rc =3D sqlite3_bind_text(select, 3, value, -1, SQLITE_STATIC);
 	if (rc) {
 		dberr(file_db, "couldn't bind xattr name to SELECT.");

