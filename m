Return-Path: <lchristina26@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 049C4E0079A; Tue, 12 Aug 2014 10:49:58 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.178 listed in list.dnswl.org]
Received: from mail-ig0-f178.google.com (mail-ig0-f178.google.com
	[209.85.213.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 31005E00796
	for <yocto@yoctoproject.org>; Tue, 12 Aug 2014 10:49:44 -0700 (PDT)
Received: by mail-ig0-f178.google.com with SMTP id uq10so7483680igb.11
	for <yocto@yoctoproject.org>; Tue, 12 Aug 2014 10:49:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:date:message-id:subject:from:to:content-type;
	bh=aMAUO6tM9U3eavbWZfrYGqPPXpLy2AXmRRDoWmpw0KY=;
	b=urvImTGEBMfUKkY3iIbxFm6/bOIr3DyjtmnbDjltRyL9NHcPsuRIumR9L7vIXnm34z
	9K+/e5ZR7GF+5wzrJAmG/KyuBKmfalAxJryeBEx/KN01UWL+FmkE5StPeH0aoV7U/gad
	dpdyFVVSnQK0nxhlFp9/MShxEkFyePtA72hYFRs86B71Q3qmviWYsVMI/olRuQMq6gwo
	USrHSQp+vRA8VEpI2BV2VVo66/q9LlaqYpTP42aP1vgF3zBy7bsGxnKt7diWG9tpyzQj
	uQIANV8xk8OpeX8mAjNIUPxWhbxMQyWEeeiPk8GEPHJR8fp1cp2TrUmv8k373544iU5o
	Lsgw==
MIME-Version: 1.0
X-Received: by 10.50.6.77 with SMTP id y13mr245150igy.21.1407865784386; Tue,
	12 Aug 2014 10:49:44 -0700 (PDT)
Sender: lchristina26@gmail.com
Received: by 10.64.11.102 with HTTP; Tue, 12 Aug 2014 10:49:44 -0700 (PDT)
Date: Tue, 12 Aug 2014 11:49:44 -0600
X-Google-Sender-Auth: h5Hkt-1CvyOEJkNFX89iMnureqQ
Message-ID: <CAL0pqZ0OQ88zN+eXvkEv=36cep0cXS2E8efDVB9yK5yL-WUdRQ@mail.gmail.com>
From: Leah <leah@wolfssl.com>
To: yocto@yoctoproject.org
Subject: yoctoproject.org website forms errors
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
X-List-Received-Date: Tue, 12 Aug 2014 17:49:58 -0000
Content-Type: multipart/alternative; boundary=047d7bdca0c6f848380500724bd4

--047d7bdca0c6f848380500724bd4
Content-Type: text/plain; charset=UTF-8

Hi,

I am trying to submit forms, ie,
https://www.yoctoproject.org/ecosystem/participant-registration, and keep
getting website errors. Tried on multiple computers, and it keeps failing.
Just thought I would let someone know in case it needs to be addressed.

Error output after submitting Yocto Project Participant and Compatible
Registration forms:

*PDOException*: SQLSTATE[42S22]: Column not found: 1054 Unknown column
'contentId' in 'field list': INSERT INTO {mollom} (entity, id, contentId,
captchaId, form_id, changed, moderate, spamScore, spamClassification,
solved, qualityScore, profanityScore, reason, languages) VALUES
(:db_insert_placeholder_0, :db_insert_placeholder_1,
:db_insert_placeholder_2, :db_insert_placeholder_3,
:db_insert_placeholder_4, :db_insert_placeholder_5,
:db_insert_placeholder_6, :db_insert_placeholder_7,
:db_insert_placeholder_8, :db_insert_placeholder_9,
:db_insert_placeholder_10, :db_insert_placeholder_11,
:db_insert_placeholder_12, :db_insert_placeholder_13); Array (
[:db_insert_placeholder_0] => webform [:db_insert_placeholder_1] => 157
[:db_insert_placeholder_2] => 1408121d6ca8a88c95 [:db_insert_placeholder_3]
=> [:db_insert_placeholder_4] => webform_client_form_351547
[:db_insert_placeholder_5] => 1407865116 [:db_insert_placeholder_6] => 0
[:db_insert_placeholder_7] => 0 [:db_insert_placeholder_8] => ham
[:db_insert_placeholder_9] => [:db_insert_placeholder_10] =>
[:db_insert_placeholder_11] => [:db_insert_placeholder_12] =>
[:db_insert_placeholder_13] => ) in *drupal_write_record()* (line *7207* of
*/var/www/drupal/includes/common.inc*).


Thanks,

Leah

-- 

Leah Thompson
www.wolfssl.com
leah@wolfssl.com
406-570-1389
Skype: lchristina26

--047d7bdca0c6f848380500724bd4
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<br><br>I am trying to submit forms, ie, <a href=3D"htt=
ps://www.yoctoproject.org/ecosystem/participant-registration">https://www.y=
octoproject.org/ecosystem/participant-registration</a>, and keep getting we=
bsite errors. Tried on multiple computers, and it keeps failing. Just thoug=
ht I would let someone know in case it needs to be addressed. <br>
<div><br clear=3D"all"></div><div>Error output after submitting Yocto Proje=
ct Participant and Compatible Registration forms:<br><br><em class=3D"">PDO=
Exception</em>: SQLSTATE[42S22]: Column not=20
found: 1054 Unknown column &#39;contentId&#39; in &#39;field list&#39;: INS=
ERT INTO=20
{mollom} (entity, id, contentId, captchaId, form_id, changed, moderate,=20
spamScore, spamClassification, solved, qualityScore, profanityScore,=20
reason, languages) VALUES (:db_insert_placeholder_0,=20
:db_insert_placeholder_1, :db_insert_placeholder_2,=20
:db_insert_placeholder_3, :db_insert_placeholder_4,=20
:db_insert_placeholder_5, :db_insert_placeholder_6,=20
:db_insert_placeholder_7, :db_insert_placeholder_8,=20
:db_insert_placeholder_9, :db_insert_placeholder_10,=20
:db_insert_placeholder_11, :db_insert_placeholder_12,=20
:db_insert_placeholder_13); Array
(
    [:db_insert_placeholder_0] =3D&gt; webform
    [:db_insert_placeholder_1] =3D&gt; 157
    [:db_insert_placeholder_2] =3D&gt; 1408121d6ca8a88c95
    [:db_insert_placeholder_3] =3D&gt;=20
    [:db_insert_placeholder_4] =3D&gt; webform_client_form_351547
    [:db_insert_placeholder_5] =3D&gt; 1407865116
    [:db_insert_placeholder_6] =3D&gt; 0
    [:db_insert_placeholder_7] =3D&gt; 0
    [:db_insert_placeholder_8] =3D&gt; ham
    [:db_insert_placeholder_9] =3D&gt;=20
    [:db_insert_placeholder_10] =3D&gt;=20
    [:db_insert_placeholder_11] =3D&gt;=20
    [:db_insert_placeholder_12] =3D&gt;=20
    [:db_insert_placeholder_13] =3D&gt;=20
)
 in <em class=3D"">drupal_write_record()</em> (line <em class=3D"">7207</em=
> of <em class=3D"">/var/www/drupal/includes/common.inc</em>).<br><br><br><=
/div><div>Thanks,<br><br></div><div>Leah<br></div><div><br>-- <br><div dir=
=3D"ltr">
<div><div><div><p></p>Leah Thompson<br></div><a href=3D"http://www.wolfssl.=
com" target=3D"_blank">www.wolfssl.com</a><br></div><a href=3D"mailto:leah@=
wolfssl.com" target=3D"_blank">leah@wolfssl.com</a><br>406-570-1389<br></di=
v>Skype: lchristina26<br>
<div><div><br><br></div></div></div></div></div>

--047d7bdca0c6f848380500724bd4--
