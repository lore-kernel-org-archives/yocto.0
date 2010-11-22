Return-Path: <lianhao.lu@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 77E654C80052
	for <yocto@yoctoproject.org>; Mon, 22 Nov 2010 06:51:34 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 22 Nov 2010 04:51:34 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,235,1288594800"; d="scan'208";a="860156062"
Received: from pgsmsx601.gar.corp.intel.com ([10.221.43.69])
	by fmsmga001.fm.intel.com with ESMTP; 22 Nov 2010 04:51:26 -0800
Received: from shsmsx601.ccr.corp.intel.com (10.239.4.112) by
	pgsmsx601.gar.corp.intel.com (10.221.43.69) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Mon, 22 Nov 2010 20:50:16 +0800
Received: from shsmsx502.ccr.corp.intel.com ([10.239.4.96]) by
	shsmsx601.ccr.corp.intel.com ([10.239.4.112]) with mapi;
	Mon, 22 Nov 2010 20:50:16 +0800
From: "Lu, Lianhao" <lianhao.lu@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Mon, 22 Nov 2010 20:50:13 +0800
Thread-Topic: [yocto] Eclipse plugin
Thread-Index: AcuKOFZDvWK3jjn+SK++y1pG0q4QGQACR50g
Message-ID: <C10D3FB0CD45994C8A51FEC1227CE22F1ACE892ED1@shsmsx502.ccr.corp.intel.com>
References: <4CEA3442.6080909@mlbassoc.com> <4CEA53B8.9060804@mlbassoc.com>
In-Reply-To: <4CEA53B8.9060804@mlbassoc.com>
Accept-Language: zh-CN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: zh-CN, en-US
MIME-Version: 1.0
Subject: Re: Eclipse plugin
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 22 Nov 2010 12:51:34 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Gary Thomas wrote on 2010-11-22:
> On 11/22/2010 02:13 AM, Gary Thomas wrote:
>> I'm interested in trying the Yocto Eclipse plugin with my Poky based bui=
lds.
>> That said, I'm a true Eclipse novice :-(
>>=20
>> Does anyone have some guidance on what packages I might need to
>> install to get a usable Eclipse framework on Fedora (13)? For
>> example, the Yocto page mentions the "standard TCF" agent to contact
>> the target
>> - how do I make sure this is available and enabled?
>>=20
>> n.b. the [web] documentation on this plugin is pretty thin. Perhaps
>> once I get this going, I can contribute some meat to put on these
>> bones :-)
>>=20
>> Thanks
>>=20
>=20
> I tried to follow the documentation in the Poky manual (still
> thin...), but it seems I'm now stuck.  I get this error:
>    Cannot complete the install because one or more required items could
>    not be found. Software being installed: Yocto Plugin for Eclipse
>    1.0.0.201010202121 (org.yocto.sdk.feature.group 1.0.0.201010202121)
>    Missing requirement: Yocto Plugin Remote Tools 1.0.0.201010202121
> (org.yocto.sdk.remotetools 1.0.0.201010202121) requires 'bundle
> org.eclipse.rse.terminals.ui 1.0.100' but it could not be found
>    Cannot satisfy dependency:
>      From: Yocto Plugin for Eclipse 1.0.0.201010202121
> (org.yocto.sdk.feature.group 1.0.0.201010202121)
>=20
> As far as I can tell, the eclise-rse package on Fedora 13 is version
> 1.0.1 :-( Also, Fedora is still on Galileo 3.5.2, not Helios 3.6.
>=20
> I guess I'll try the raw install of Helios since Fedora+YUM has failed me=
.
>
Gary,

Sorry for the thin documentation about eclipse plug-in installation.

The Yocto eclipse plugin has some dependencies on other eclipse plugins:
- C/C++ Development Tools (CDT) (http://download.eclipse.org/tools/cdt/rele=
ases/helios if using Eclipse 3.6Helios, or http://download.eclipse.org/tool=
s/cdt/releases/galileo if using Eclipse 3.5Galileo)
- Autotools support for CDT (Incubation) (http://download.eclipse.org/techn=
ology/linuxtools/update)=20
- Target Management (RSE) (http://download.eclipse.org/dsdp/tm/updates/3.2)=
=20

To install one of the above eclipse plugins in the IDE,=20
1. Go to Help > Install New Software... to open the Install dialog.
2. Click the Add... button; this will display the Add Site dialog.
3. Enter the corresponding URL in the Location: field and click "OK". This =
will add the corresponding update site to the list of available sites.
4. The corresponding update site should now be selected in the "Work with:"=
 selection box. If not, you can select it from the list by clicking the dow=
n arrow and locating its entry. You can simply collapse the entry for this =
site to view content available for installation.
5. Check the corresponding box and click Next button, following the wizard =
to install the plug-in. =20

Best Regards,
Lianhao


