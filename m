Return-Path: <diego.ml@zoho.com>
Received: from sender1.zohomail.com (sender1.zohomail.com [72.5.230.95])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 47977E01547
	for <yocto@yoctoproject.org>; Mon, 17 Jun 2013 03:47:18 -0700 (PDT)
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=zapps768; d=zoho.com; 
	h=from:to:cc:subject:date:message-id:user-agent:in-reply-to:references:mime-version:content-type;
	b=DiYw/Ap4yXyJisDsi15TeQj0FFCezRRZLGF9mXYoSOB7mKp0nrfiNVJOoN/tvbFAzZg1knta13Je
	ETrgRhD8Nq+uwlg87DqzLV7eIn5flzwSSZClaY+sDSugRCECHmMo  
Received: from localhost.localdomain (static-217-133-170-65.clienti.tiscali.it
	[217.133.170.65]) by mx.zohomail.com
	with SMTPS id 1371466033976298.76237933533537;
	Mon, 17 Jun 2013 03:47:13 -0700 (PDT)
From: Diego <diego.ml@zoho.com>
To: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
Date: Mon, 17 Jun 2013 12:47:09 +0200
Message-ID: <15073618.ieBUYuGgYp@localhost.localdomain>
User-Agent: KMail/4.10.3 (Linux/3.8.13-100.fc17.x86_64; KDE/4.10.3; x86_64; ; )
In-Reply-To: <CAPhnLPCEbtR=8Wa+odYJ197-Nqa6DHwRbPRY8V_OWrbE4bGjSw@mail.gmail.com>
References: <1810497.uZE9ivf2T0@localhost.localdomain>
	<2975064.NgcQZYsAKT@localhost.localdomain>
	<CAPhnLPCEbtR=8Wa+odYJ197-Nqa6DHwRbPRY8V_OWrbE4bGjSw@mail.gmail.com>
MIME-Version: 1.0
X-ZohoMailClient: External
X-Zoho-Virus-Status: 2
Cc: yocto@yoctoproject.org
Subject: Re: How to deal with non-standard license.
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
X-List-Received-Date: Mon, 17 Jun 2013 10:47:21 -0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="ISO-8859-1"

In data mercoled=EC 12 giugno 2013 14:17:05, Flanagan, Elizabeth ha scr=
itto:
> On Wed, Jun 12, 2013 at 9:41 AM, Diego <diego.ml@zoho.com> wrote:
> > In data marted=EC 11 giugno 2013 15:10:42, Flanagan, Elizabeth ha s=
critto:
> >> On Tue, Jun 11, 2013 at 5:28 AM, Diego <diego.ml@zoho.com> wrote:
> >> > Hi everybody,
> >> >=20
> >> > I have written a recipe which I'd like to contribute for glmark2=
:
> >> > https://launchpad.net/glmark2
> >> >=20
> >> > The last thing that puzzles me before submitting it is that it's=
 partly
> >> > GPL3+, and partly under this license:
> >> > https://github.com/rafalmiel/glmark2-wl/blob/master/COPYING.SGI
> >> > which is not in this list:
> >> > https://wiki.yoctoproject.org/wiki/License_Infrastructure_Intere=
st_Grou
> >> > p#L
> >> > icenses Is there any way to deal with that license? What should =
I put
> >> > in
> >> > the LICENSE field in my recipe?
> >>=20
> >> So, you will need to add a custom license or submit a patch OE-Cor=
e to
> >> add that license. Where are you contributing this to?
> >>=20
> >> If it's to a layer, you'll want to add the license to a custom lic=
ense
> >> path. You'll want that file to be unique and descriptive. Please m=
ake
> >> sure the license filename has a version in the file name. eg SGI-1=
.
> >> Within the layer you'll make a directory (in this example I use
> >> custom-licenses), add the license text to a file named SGI-1, then=
 add
> >> this to your layer.conf:
> >>=20
> >> LICENSE_PATH +=3D "${LAYERDIR}/custom-licenses"
> >> SPDXLICENSEMAP[SGIv1] =3D "SGI-1"
> >>=20
> >> That should get you what you want.
> >=20
> > Hi Elizabeth,
> >=20
> > I'm trying to integrate glmark2 into openembedded (meta-oe layer). =
I know
> > this is not the right mailing list for that task, but I'm still on =
the
> > license problem.
>=20
> Ah, ok. In that case, ignore what I just said and patch oe-core's
> files/common-licenses with the SGI license and
> files/conf/licenses.conf with:
>=20
> SPDXLICENSEMAP[SGIv1] =3D "SGI-1"
> SRC_DISTRIBUTE_LICENSES +=3D "SGI-1"
>=20
> That's the right way to do this, IMHO
>=20

Hi Elizabeth,

I've tried posting the patch here:
https://lists.yoctoproject.org/pipermail/poky/2013-June/009008.html

But I did not receive a reply. Maybe I did something wrong? Should the =
patch=20
go to poky ml or to openembedded-core@lists.openembedded.org ?

Thanks,
Diego


