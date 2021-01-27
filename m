Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web12.12113.1611772349967022643
 for <yocto@lists.yoctoproject.org>;
 Wed, 27 Jan 2021 10:32:30 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@yahoo.com header.s=s2048 header.b=eTU5SSMa;
 spf=neutral (domain: yahoo.com, ip: 198.145.29.25, mailfrom: chuckkamas@yahoo.com)
Received: from sonic303-25.consmr.mail.gq1.yahoo.com (sonic303-25.consmr.mail.gq1.yahoo.com [98.137.64.206])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 3045B38C0409
	for <yocto@yoctoproject.org>; Wed, 27 Jan 2021 18:32:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1611772348; bh=aKecdIWK60IMK2cnIKTG0jHEq/3iA4Jij2PRmpWQg5E=; h=To:From:Subject:Date:References:From:Subject:Reply-To; b=eTU5SSMasgQk6/1JMXqgBYdskH3y3DlgRf84+/GzQl8gYrMyX0KxkWXzDsrE8zyDykD6HCA7/8+/C4eo4CGYbF82B9R605aLZge78UfHUY9WLB0HikFAaazU6TLO0t3ktR2KJxXNksnHU7CzqCGVkmzlU95a265iBqd2sfgXGYrqyDjyg048/j6n5BqDoVX0bqa7hEgh1ocw9ycSUfYVzgxBfN6hZpqZEgStHhM8ng2iJxuOO/SeFv/yVrTxRFCZCK/S1oMn4Xw09vgS0GuCT470Xymc0b4ae0mw3rRx2I6rpgXoCFqAVurTDdXVhZ+xmcaU9yJegNNqsOiXxAQxTA==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1611772348; bh=8zooxK2WjRCFZ0nhsm/Q/Kq/6EfNB1lEbwwhzy5/c0F=; h=To:From:Subject:Date:From:Subject:Reply-To; b=T/dc4n5V18iEnj7MhIYarainBEd+BRHhDH9HBebSFNE6SElR4lXIsCRagvM1WLeyBkv78rmR5qwVaydm7q+4/e6qYRt938CR3DQmyzR9ARh0FPAM06IdXmUyayz4MRzIhtQIOJsDTQZqi8p7zDy4iNJlo/ojIuDU8Dss0MwdAFFBB7WTp+wsgw/Sh66JWQpVia+4oHYwzOMWXKS/RWA0U3q5KNp+wJJoKHIN3W/y8LEEEu8GElzrJSMJGmmFGEVQUoDy/Dpg85UsjG60IHFuCTXjQWqM6Lbwzp8GerSVhgQPiysvAKTni1d0ODp/jASiM/VEfxSMTJaPPpz+MzBMCw==
X-YMail-OSG: CftrTF4VM1mjyGL0idREKiBV1T3wQTOSpALZ7uBLNCX2tioX4H.YKGrQRjK0iQ6
 qcodLJcX5NClGZE6qWCChhS8_sBe3oCd5kVvsbbx9LuY0EcQmpVIehYzNumY6PrpA0acWBL6lO84
 zAC6TYPQ3NXHEFTnfgY4RE39rbWhwLi4VxJ9mnJCmuuva_NghWD6mNdkU9wFHkklvTElJtW9omwF
 a1J7ejGSRU3qdfVHmh7PLl9yi7pzV8I1j0JvJt_cI77Htv2lAb3dA35p_komynVZKUWLqsE_TOPk
 FsG0gTvrx2zBUgLX5PtO7bqyFDR2hhMfKYBVdREGxfGeGjpno_N1qZ74hNbdkWuZ6HrE36lm6JQC
 1k01opvxZovGyrhmRlT9uJfYkyEZcFW6v3omohScbw4MG9w1Y_hC38DLO8_gmjKYmVJi5_7MJbKv
 S.Nc6gXndtXIPfml0vHxsYnPDFahOtzjyBfIf0RF_6coFjVkF0WhLfTgzOaa1EqvTw9zVsCr7Rcl
 cPLV5oLGlc83uMlN9ZeFmukfnyWsMV3oe9ekm4kuezzZpvskCQ7uNSgR9nZ0pfzbWyPBcntJqzYc
 _TarSyikcXPGwnUGu8wgpQ13jx2n0F.1qgEWAsdlzQCjocvjHvMXdwlYAvjdv4MNgD9CWiiTUTAI
 Lhe5.lIjpCHjAPOm2YTGWeZ7NubENAJnqQTdTLRvDHxFynWgb_v.V37I1ETKtK0lMlWNtwIMoP9c
 DEGxKr_opEHDi_zZScgAHVQnGhflKtoavOrmZzEn8ubdJVGDrkKxi8evFP8lSkBq0kHZjThP8IkE
 l5j_qI91cK938wMwnsVOFKKORu3rg6vAY0loaa7WH7cyETdbq42.EB3_divhmp_8LtHNPi5_o_Qd
 F6Z5yNDAXqouWptpX4UyF5z1QZwuXyImUWQvIgorcEtJyW8LRyUOO152yEHDlHTxmRjt9skCsSWv
 7bUfplbkkVFkUrrK1Phv.9jLGLShsu9qQgGUdxvDzS0JBV7AE7.5pWUbhqvgJA61soHhtD9ZvCPB
 SRK2lzTpUnXlD9CV1SBVbddXl5Hum8P5IO6kJ3WtRI0ZmWy84v34Rx3FbN5HpgdEWG7Oe39xtUSX
 SyLKoKf8wOu1lMH0mQAzueSTHoxQB8NgywLe_unkg98fTUSsdk0iD1JC8gczMQ8.FJ6IZ6CKthsv
 hmyeazhg4_6QVFaIXTKl0RrZpRlyXLHArf.LajxZtQ2enJWq1T5We0GNcTf4ouG7rL6PEy4SJmui
 6h3vApL8AnnHUsixRLQHbw5GuxwYEiTufth9zNJnX1N8L4VkWynxwa.u7dRUTaVNbuH8TP1WC1w2
 m70zZ.p_ye829nwdSx1hnbazhkq86itLP9j74r_CiY__dMMD1tXzMLXSO62trc0bS3TDfQBDRDvV
 9v6nRgx6OJBjEB0TjaFHplXAFQb4GGdVTc2e9WARRKuftMMT2KyCQoPT_I_XDGvndPGtjnZCP0rF
 n1N4.B_r.bZ67rknGLbZ6TUhiEz7G1KGSER4iof0K7baxBcTnL.doyQ7HsjK8aKXPx2i77oN8Dug
 HYV7arpyTD757Hbm9sHRPiLw6FitpTivGxXz1qVCuc4NG2XaYH30cuq7kr42efYrlLN3Z7wPo0_1
 3JiNeQgQBvA6rerux9p8_2rbV2aPClYIBKW1smpDf.zB_gBrKCIcNnIYwMtHvvNLSDQn4hSa7pi7
 _wvrBhpAw.poz5G5xuMRJUIZusJr542SJPxZ4aMkJ2_OPoiPY.siXC8UCKNYha2kSfv_JpI3k248
 7E7iJhNjMcJvxqYZnWBaMHDcvcZtBrFke3b38Dgj7543RUuw0I2Fcy2dkWlyB4SX..GNbxFdmVW9
 6ordOyqcoyY_SNZ2fAGHpfs.jt3wugW96nHX9eZ4MNQhxNWd5T2Vgl8lptyhVpGO9GBktcGQAAIa
 2jQ_HiKm0RK8PvX4NbQS4LirRZJI9tWOf9untXNOIfTWheLya.g9XG21vA6g1NdClrTlMz3RYwul
 UIQvOTVkjg6mP_.z2QfDwzF2SiFzjcfQRVHgPL4aGS8nzxsCgcxrPTrxzSDsA7iHZrXKFZGO3jd4
 kYPYhhIMHXMtfOk_4uBkvmpclkuLiLBcOUS284Fqxiy_yKLwzuP5LMQ8mUOptC3L7g9EI7Ti.52e
 UnICUES.zXLKFACOMnjV4tdArIpqmqf94SSwBb7WKRHjdB3lgzvaW_Z6n6f8FLgoeVG3sjSgxUAp
 ZWv1An7g1eHesmYiA4Gwo58ToeWOLFm0eUUdGgSgrTUowba7R2Cs3vZna5u_mhjuNbaGtHckG8vC
 JwMEZU1DWbiiHEfOqTPuNeNyDARVcY_8Nls1YidodnC_rlv7EgOJjZ6RA9pEkVhygj4ILy3sZKt.
 t3vTFOuUJyW4U4YLEMTovACqHUpnBigj15MOHizdxW2M_PsfrnoMoo8IPbL4f7coAu4FpiLcQEYK
 DHsXR
Received: from sonic.gate.mail.ne1.yahoo.com by sonic303.consmr.mail.gq1.yahoo.com with HTTP; Wed, 27 Jan 2021 18:32:28 +0000
Received: by smtp418.mail.ne1.yahoo.com (VZM Hermes SMTP Server) with ESMTPA ID 1702aad29cb39897d8dea88bf071b9f5;
          Wed, 27 Jan 2021 18:32:25 +0000 (UTC)
To: yocto <yocto@yoctoproject.org>
From: "chuck kamas" <chuckkamas@yahoo.com>
Subject: Including binary application as part of the image output
Message-ID: <10e8c340-6435-6158-5d9f-0d00fb4afb4c@yahoo.com>
Date: Wed, 27 Jan 2021 10:32:24 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
References: <10e8c340-6435-6158-5d9f-0d00fb4afb4c.ref@yahoo.com>
X-Mailer: WebService/1.1.17642 mail.backend.jedi.jws.acl:role.jedi.acl.token.atz.jws.hermes.yahoo Apache-HttpAsyncClient/4.1.4 (Java/11.0.8)
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-US

Hi all,


As part of our image we build our company's application. This 
application becomes part of the image and is executed when the image boots.

My question is how to have the binary image also be available along with 
the image's wic file? Is there a line I can add to a recipe to have it 
copy that image file to the tmp/deploy directory or other appropriate 
directory so that it is available?


Thanks!

Chuck


