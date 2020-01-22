Received: from EUR04-HE1-obe.outbound.protection.outlook.com (EUR04-HE1-obe.outbound.protection.outlook.com [40.107.7.131])
 by mx.groups.io with SMTP id smtpd.web12.623.1579701312176503640
 for <yocto@lists.yoctoproject.org>;
 Wed, 22 Jan 2020 05:55:13 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@prevas.dk header.s=selector1 header.b=TaSDpHP+;
 spf=pass (domain: prevas.dk, ip: 40.107.7.131, mailfrom: rasmus.villemoes@prevas.dk)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WkidqD+cKEwzDfXOdu9Mdw3d+HTAYwhK/q7wodntGzlurAOxvMe+X8GYJDHZQr0B7Gs3mt7eEVcE9FwAkF4Md3ygQ1EHuPlWZ3nNSllXAx13ecy4pnLsYwHnMeBVTFovEwIrU+mq9hv/aBvW6R7dsTKUs8bE/F0Rphympo8VZXRpsYhZTKB9+34JpEZmrq6RXASb+2UTCEhBqD5YoFJ9r4A8vMIfXchNv65hGk5lP5FViymkbHNqJOI6nqtXJceNilG7JXU0yA4XD93Q8vBDulPoKDOLxZrUdy6kO14KC5LcdItLbeFveA4/HiWthf9OGThki4d+MChiCUEYApBe+A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2l4fnNEQXLjZKCwYo4GOiXplpnnrNJ18J/fNbjglLPw=;
 b=PXHIhty1Y4ya013AC/QmEUIGQUSVtd3PrnxO74rH4lBLcunbFjtNv8jkkrB7BP6mDIiccnX+2weUe6lxTdfP3IY4/mXEQHNLPy12R7Hi4vAmvl5fpW4+sf3sX9wzsUeMbA2u+W4yu+UySkgm4rfE2Ug8i0rfapnowR+IScN5qEGzElo82rKBshNevsZcaFwlBY0GnladUUXkkp/SNrOFrN5E56I5cZ6DeQLlJPJhINA6T40V3CJ8lLfj0TyDl5U8RWt3WJU7+3TDZuLtFMW1Wx9fCNJYy71XJ2vWt7xAwK/O7jQkiCoxG74tXnwf3aozpfd6Si/TK+IA9jwMAuwHJg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=prevas.dk; dmarc=pass action=none header.from=prevas.dk;
 dkim=pass header.d=prevas.dk; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=prevas.dk;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2l4fnNEQXLjZKCwYo4GOiXplpnnrNJ18J/fNbjglLPw=;
 b=TaSDpHP+ULEBhA2JXl7KT251irz2QZgWXIye/ZT3Q7iThO0Eog6NkMMaAeT6oCeZynOwXZCq9UU5/3Q9DGZQwZ5NKTmDg6UI0XaIqnRRJoum1N/ZEfWULqzjomZY83o/O4pklDN69CAJNB/gFheTQr8Z7mMjRy/7Xyel+ZJ3wQ4=
Received: from VI1PR10MB2765.EURPRD10.PROD.OUTLOOK.COM (20.178.126.85) by
 VI1PR10MB2127.EURPRD10.PROD.OUTLOOK.COM (52.134.22.153) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2644.19; Wed, 22 Jan 2020 13:55:08 +0000
Received: from VI1PR10MB2765.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::8175:5aa2:2870:766d]) by VI1PR10MB2765.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::8175:5aa2:2870:766d%6]) with mapi id 15.20.2644.027; Wed, 22 Jan 2020
 13:55:08 +0000
Received: from [172.16.11.50] (81.216.59.226) by HE1PR0701CA0046.eurprd07.prod.outlook.com (2603:10a6:3:9e::14) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2665.12 via Frontend Transport; Wed, 22 Jan 2020 13:55:08 +0000
From: "Rasmus Villemoes" <rasmus.villemoes@prevas.dk>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: using d.expand() in a python function
Thread-Topic: using d.expand() in a python function
Thread-Index: AQHV0SuOatWbVK+eXUOXX8BBdCYeKg==
Date: Wed, 22 Jan 2020 13:55:08 +0000
Message-ID: <482fcb80-a58f-228c-91b0-8e42d565a092@prevas.dk>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: HE1PR0701CA0046.eurprd07.prod.outlook.com
 (2603:10a6:3:9e::14) To VI1PR10MB2765.EURPRD10.PROD.OUTLOOK.COM
 (2603:10a6:803:e1::21)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=rasmus.villemoes@prevas.dk; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [81.216.59.226]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: ebbfe91c-7cb8-44a5-1e92-08d79f42b145
x-ms-traffictypediagnostic: VI1PR10MB2127:
x-microsoft-antispam-prvs: 
 <VI1PR10MB2127862D661FDEFA57E584E3930C0@VI1PR10MB2127.EURPRD10.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 029097202E
x-forefront-antispam-report: 
 SFV:NSPM;SFS:(10019020)(366004)(199004)(189003)(86362001)(26005)(66446008)(66556008)(66946007)(31696002)(64756008)(66476007)(52116002)(31686004)(5660300002)(8676002)(6916009)(2616005)(956004)(71200400001)(2906002)(16576012)(4744005)(81156014)(498600001)(16526019)(81166006)(8936002)(44832011)(186003)(36756003)(6486002)(8976002);DIR:OUT;SFP:1102;SCL:1;SRVR:VI1PR10MB2127;H:VI1PR10MB2765.EURPRD10.PROD.OUTLOOK.COM;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;A:1;MX:1;
received-spf: None (protection.outlook.com: prevas.dk does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 gB1ZgCFWEURgkSG8C1ajQ6RYX5+zeDyCa7TQTRHpO/OyLIHRdOjr+Sf6Z1WcE3GO2K0Xz7JiFmXSOT39Fm+hcDiGiQDhj6FQEgJIdEf1aZ8E0F1ICgvYcmrh9cWHdDb4kAgK+noguNZx6E+faYy5Lmfb9uiqiBuJwfC8Gu4086246QNrv7SieVWC2iE9rCQSUzrlQlcXFqUlsAUaHkEVYjJ00QFdv/lmdepSo6r5cZGVhpnoUULbDaxbzJq/7ZFClZRkppKQc1igE+wWq/69xv8P1icnEyESAgZJS5hbk5z8eSZGRpG8779zIQ8p8DVvzO/o4cvPrunsxWsKxXwiXKIJk8cHfUXo03UZTuQS3T82EbVPMNQvsFN6GSk5/XdQMYW4FBl7jYdLOpNEtdaqypA9lScsxWyGSqkVKD2+QaFPA534rme90YDMRZPB8uKi
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: prevas.dk
X-MS-Exchange-CrossTenant-Network-Message-Id: ebbfe91c-7cb8-44a5-1e92-08d79f42b145
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Jan 2020 13:55:08.8368
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d350cf71-778d-4780-88f5-071a4cb1ed61
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: re7StQ+1jg9bOW0QAIfOJvN/Dh0UYCMEoQqWpU1o1mZw0zXjrRaj/Awpn4GOAISl+nErG0TZ9owcMcudEuhDe+VulnF64ZJr0j5b/5KU5qo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR10MB2127
Content-Language: en-US
Content-Type: text/plain; charset="Windows-1252"
Content-ID: <198A0A0894AA9E4698A2925FE1AA79EE@EURPRD10.PROD.OUTLOOK.COM>
Content-Transfer-Encoding: quoted-printable

I have a do_configure() python function which is essentially

python do_configure() {
    import fileinput
    with open("foo.txt", "w") as out:
        for line in fileinput.input(files=3Dd.getVar("FOO_INPUT").split()):
            line =3D d.expand(line)
            out.write(line)
}

So some of those input files can contain ${VARIABLE} and it gets
replaced appropriately. But to my surprise, when I then change VARIABLE,
the recipe doesn't get rebuilt, so it seems that bitbake doesn't
automatically realize that the recipe (or task) depends on VARIABLE.

So digging a bit into the code, it seems that d.expand() calls
expandWithRefs(), which returns a VariableParse object, but then only
uses the .value property, throwing away .references. So I assume that
what I really should be doing is call expandWithRefs and then somehow
manually pass .references to... something? Or, there must be some other
bitbake interface for doing this properly?

Rasmus
