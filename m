Return-Path: <jose.a.lamego@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5314FE00B63; Wed, 16 Mar 2016 10:52:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E355FE00B46
	for <yocto@yoctoproject.org>; Wed, 16 Mar 2016 10:52:06 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by fmsmga102.fm.intel.com with ESMTP; 16 Mar 2016 10:52:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.24,345,1455004800"; 
	d="asc'?scan'208";a="935313143"
Received: from jalamego-mobl2.zpn.intel.com (HELO [10.219.5.140])
	([10.219.5.140])
	by orsmga002.jf.intel.com with ESMTP; 16 Mar 2016 10:52:04 -0700
To: yocto@yoctoproject.org
References: <1457565752-20659-1-git-send-email-jose.a.lamego@linux.intel.com>
From: Jose Lamego <jose.a.lamego@linux.intel.com>
Message-ID: <56E99D36.6040808@linux.intel.com>
Date: Wed, 16 Mar 2016 11:51:50 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.6.0
MIME-Version: 1.0
In-Reply-To: <1457565752-20659-1-git-send-email-jose.a.lamego@linux.intel.com>
Cc: timothy.t.orling@intel.com
Subject: Re: [PATCH 1/3][eclipse-poky][mars] systemtap: Add button to browse to build folder.
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
X-List-Received-Date: Wed, 16 Mar 2016 17:52:09 -0000
X-Groupsio-MsgNum: 29056
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature";
	boundary="Hc4oUbJDxITF2VNPrkB7H48xDv9VamRJM"

--Hc4oUbJDxITF2VNPrkB7H48xDv9VamRJM
Content-Type: multipart/mixed; boundary="rVr4CFEdkauL9TpV6oh90px7wAXe1dq4N"
From: Jose Lamego <jose.a.lamego@linux.intel.com>
To: yocto@yoctoproject.org
Cc: todor.minchev@intel.com, Adrian Dudau <adrian.dudau@enea.com>,
 timothy.t.orling@intel.com
Message-ID: <56E99D36.6040808@linux.intel.com>
Subject: Re: [yocto][PATCH 1/3][eclipse-poky][mars] systemtap: Add button to
 browse to build folder.
References: <1457565752-20659-1-git-send-email-jose.a.lamego@linux.intel.com>
In-Reply-To: <1457565752-20659-1-git-send-email-jose.a.lamego@linux.intel.com>

--rVr4CFEdkauL9TpV6oh90px7wAXe1dq4N
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

Ping

On 03/09/2016 05:22 PM, Jose Lamego wrote:
> From: Adrian Dudau <adrian.dudau@enea.com>
>=20
> Fixes [Yocto 4423]
> Porting commit a80114b5d1c8d774fd9271da48a38654321d4817 from
> the Juno branch.
>=20
> Signed-off-by: Jose Lamego <jose.a.lamego@linux.intel.com>
> ---
>  .../src/org/yocto/remote/utils/ShellSession.java   |  6 +++--
>  .../src/org/yocto/sdk/remotetools/Messages.java    |  1 +
>  .../sdk/remotetools/actions/SystemtapHandler.java  |  3 ++-
>  .../sdk/remotetools/actions/SystemtapModel.java    |  5 ++--
>  .../actions/SystemtapSettingDialog.java            | 28 ++++++++++++++=
++++++++
>  .../org/yocto/sdk/remotetools/messages.properties  |  3 ++-
>  6 files changed, 40 insertions(+), 6 deletions(-)
>=20
> diff --git a/plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/=
ShellSession.java b/plugins/org.yocto.remote.utils/src/org/yocto/remote/u=
tils/ShellSession.java
> index 4ac8001..2a4dbf5 100644
> --- a/plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/ShellSe=
ssion.java
> +++ b/plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/ShellSe=
ssion.java
> @@ -46,6 +46,7 @@ public class ShellSession {
>  	private String shellPath =3D null;
>  	private final String initCmd;
>  	private final File root;
> +        private final File builddir;
> =20
>  	private OutputStreamWriter out;
> =20
> @@ -68,8 +69,9 @@ public class ShellSession {
>  		return sb.toString();
>  	}
> =20
> -	public ShellSession(int shellType, File root, String initCmd, OutputS=
tream out) throws IOException {
> +	public ShellSession(int shellType, File root, File builddir, String i=
nitCmd, OutputStream out) throws IOException {
>  		this.root =3D root;
> +                this.builddir =3D builddir;
>  		this.initCmd  =3D initCmd;
>  		if (out =3D=3D null) {
>  			this.out =3D new OutputStreamWriter(null);
> @@ -93,7 +95,7 @@ public class ShellSession {
>  		}
> =20
>  		if (initCmd !=3D null) {
> -			execute("source " + initCmd);
> +			execute("source " + initCmd + " " + builddir.getAbsolutePath());
>  		}
>  	}
> =20
> diff --git a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remote=
tools/Messages.java b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk=
/remotetools/Messages.java
> index 093118d..16f5dc8 100644
> --- a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/M=
essages.java
> +++ b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/M=
essages.java
> @@ -40,6 +40,7 @@ public class Messages extends NLS {
>  	public static String TerminalViewer_text;
>  	//public static String Systemtap_KO_Text;
>  	public static String Metadata_Location;
> +        public static String Builddir_Location;
>  	public static String User_ID;
>  	public static String Remote_User_ID;
>  	public static String Remote_Host;
> diff --git a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remote=
tools/actions/SystemtapHandler.java b/plugins/org.yocto.sdk.remotetools/s=
rc/org/yocto/sdk/remotetools/actions/SystemtapHandler.java
> index 79048aa..86c963f 100644
> --- a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/a=
ctions/SystemtapHandler.java
> +++ b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/a=
ctions/SystemtapHandler.java
> @@ -53,6 +53,7 @@ public class SystemtapHandler extends AbstractHandler=
 {
>  		if(setting.open() =3D=3D BaseSettingDialog.OK) {
> =20
>  			String metadata_location =3D ((SystemtapSettingDialog)setting).getM=
etadataLocation();
> +                        String builddir_location =3D ((SystemtapSettin=
gDialog)setting).getBuilddirLocation();
>  			String remote_host =3D ((SystemtapSettingDialog)setting).getRemoteH=
ost();
>  			String user_id =3D ((SystemtapSettingDialog)setting).getUserID();
>  			String systemtap_script =3D ((SystemtapSettingDialog)setting).getSy=
stemtapScript();
> @@ -66,7 +67,7 @@ public class SystemtapHandler extends AbstractHandler=
 {
>  			if (terminalSubSystem !=3D null) {
>  				TerminalsUI terminalsUI =3D TerminalsUI.getInstance();
>  				TerminalViewer terminalViewer =3D terminalsUI.activateTerminalsVie=
w();
> -				SystemtapModel op =3D new SystemtapModel(metadata_location,remote_=
host, user_id, systemtap_script,
> +				SystemtapModel op =3D new SystemtapModel(metadata_location,builddi=
r_location,remote_host, user_id, systemtap_script,
>  						systemtap_args,window.getShell().getDisplay());
>  				try {
>  					op.setHost(host);
> diff --git a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remote=
tools/actions/SystemtapModel.java b/plugins/org.yocto.sdk.remotetools/src=
/org/yocto/sdk/remotetools/actions/SystemtapModel.java
> index c769574..2a76bbd 100644
> --- a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/a=
ctions/SystemtapModel.java
> +++ b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/a=
ctions/SystemtapModel.java
> @@ -37,6 +37,7 @@ public class SystemtapModel extends BaseModel {
> =20
>  	protected MessageConsole sessionConsole;
>  	private String metadata_location;
> +        private String builddir_location;
>  	private String remote_host;
>  	private String user_id;
>  	private String systemtap_script;
> @@ -44,7 +45,7 @@ public class SystemtapModel extends BaseModel {
> =20
>  	Display display;
>  =09
> -	public SystemtapModel(String metadata_location, String remote_host, S=
tring user_id, String systemtap_script, String systemtap_args, Display di=
splay) {
> +	public SystemtapModel(String metadata_location, String builddir_locat=
ion, String remote_host, String user_id, String systemtap_script, String =
systemtap_args, Display display) {
>  		super(null, TASK_NAME, "", "");
>  		this.metadata_location =3D metadata_location;
>  		this.remote_host =3D remote_host;
> @@ -89,7 +90,7 @@ public class SystemtapModel extends BaseModel {
>  			throws InvocationTargetException, InterruptedException {
>  		try {
>  			ShellSession shell =3D new ShellSession(ShellSession.SHELL_TYPE_BAS=
H,=20
> -												new File(this.metadata_location),
> +												new File(this.metadata_location), new File(this.builddir_l=
ocation),
>  												DEFAULT_INIT_SCRIPT, sessionConsole.newOutputStream());
>  			boolean acceptedKey =3D shell.ensureKnownHostKey(user_id, remote_ho=
st);
>  			if (acceptedKey) {
> diff --git a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remote=
tools/actions/SystemtapSettingDialog.java b/plugins/org.yocto.sdk.remotet=
ools/src/org/yocto/sdk/remotetools/actions/SystemtapSettingDialog.java
> index 2b90727..5c14c9a 100644
> --- a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/a=
ctions/SystemtapSettingDialog.java
> +++ b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/a=
ctions/SystemtapSettingDialog.java
> @@ -37,18 +37,21 @@ public class SystemtapSettingDialog extends Dialog =
{
>  	static protected String TITLE=3D"Systemtap Crosstap";
>  	protected String title;
>  	protected String metadata_location;
> +        protected String builddir_location;
>  	protected String systemtap_script;
>  	protected String user_id;
>  	protected String remote_host;
>  	protected String systemtap_args;
>  	protected boolean okPressed;
>  	protected Button metadataLocationBtn;
> +        protected Button builddirLocationBtn;
>  	protected Button systemtapScriptBtn;
>  	protected Text userIDText;
>  	protected Text remoteHostText;
>  	protected Text systemtapArgsText;
>  	protected Text systemtapScriptText;
>  	protected Text metadataLocationText;
> +        protected Text builddirLocationText;
>  =09
>  	protected SystemtapSettingDialog(Shell parentShell, String title) {
>  		super(parentShell);
> @@ -74,6 +77,10 @@ public class SystemtapSettingDialog extends Dialog {=

>  	public String getMetadataLocation() {
>  		return metadata_location;
>  	}
> +
> +        public String getBuilddirLocation() {
> +                return builddir_location;
> +        }
>  =09
>  	public String getRemoteHost() {
>  		return remote_host;
> @@ -119,6 +126,14 @@ public class SystemtapSettingDialog extends Dialog=
 {
>  		metadataLocationBtn =3D addDirSelectButton(textContainer, metadataLo=
cationText);
>  	=09
>  		label =3D new Label(projComp, SWT.NONE);
> +                label.setText(Messages.Builddir_Location);
> +                textContainer =3D new Composite(projComp, SWT.NONE);
> +                textContainer.setLayout(new GridLayout(2, false));
> +                textContainer.setLayoutData(new GridData(SWT.FILL, SWT=
=2ECENTER, true, false));
> +                builddirLocationText =3D (Text)addTextControl(textCont=
ainer, builddir_location);
> +                builddirLocationBtn =3D addDirSelectButton(textContain=
er, builddirLocationText);
> +
> +                label =3D new Label(projComp, SWT.NONE);
>  		label.setText(Messages.Remote_User_ID);
>  		userIDText =3D new Text(projComp, SWT.SINGLE | SWT.BORDER);
>  	=09
> @@ -219,6 +234,19 @@ public class SystemtapSettingDialog extends Dialog=
 {
>  			CommonHelper.showErrorDialog("SystemTap Error", null, "The specifie=
d metadata location is not a directory!");
>  			return;
>  		}
> +                builddir_location =3D builddirLocationText.getText();
> +                if ( (builddir_location =3D=3D null) || builddir_locat=
ion.isEmpty()) {
> +                        CommonHelper.showErrorDialog("SystemTap Error"=
, null, "Please specify your builddir location!");
> +                        return;
> +                }
> +                File builddir_dir =3D new File(builddir_location);
> +                if (!builddir_dir.exists()) {
> +                        CommonHelper.showErrorDialog("SystemTap Error"=
, null, "The specified builddir location does not exist!");
> +                }
> +                if (!metadata_dir.isDirectory()) {
> +                        CommonHelper.showErrorDialog("SystemTap Error"=
, null, "The specified builddir location is not a directory!");
> +                        return;
> +                }
>  		user_id =3D userIDText.getText();
>  		if ( (user_id =3D=3D null) || user_id.isEmpty()) {
>  			CommonHelper.showErrorDialog("SystemTap Error", null, "Please speci=
fy remote user id!");
> diff --git a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remote=
tools/messages.properties b/plugins/org.yocto.sdk.remotetools/src/org/yoc=
to/sdk/remotetools/messages.properties
> index bc065b9..173897a 100644
> --- a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/m=
essages.properties
> +++ b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/m=
essages.properties
> @@ -35,6 +35,7 @@ Powertop_ShowPid_Text=3Dshow pids in wakeups list
>  TerminalViewer_text=3DThis view is dedicated to Yocto Remote tools. Pl=
ease use the "Yocto Remote Tools" menu to open the view.
>  //Systemtap_KO_Text=3DKernel Module:
>  Metadata_Location=3DMetadata Location:
> +Builddir_Location=3DBuild dir Location:
>  User_ID=3DUser ID:
>  Remote_User_ID=3DRemote User ID:
>  Remote_Host=3DRemote Host:
> @@ -46,4 +47,4 @@ LocalJob_Title=3DLaunching local application
>  ErrorLocalJob=3DFailed in launching local application
> =20
>  RemoteShellExec_1=3DExecuting {0} {1}
> -RemoteShellExec_2=3DCould not create the hostShellProcess.\n
> \ No newline at end of file
> +RemoteShellExec_2=3DCould not create the hostShellProcess.\n
>=20

--=20
Jose Lamego | OTC Embedded Platforms & Tools | GDC


--rVr4CFEdkauL9TpV6oh90px7wAXe1dq4N--

--Hc4oUbJDxITF2VNPrkB7H48xDv9VamRJM
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.22 (GNU/Linux)

iQEcBAEBAgAGBQJW6Z1FAAoJEFJAtowlSEbnPvIH/3XxxvuS+Dx46IBP2JRC1pEJ
Om144IuBa20oEzonEVvgt7UYfFOpDrzbRoMvsGoWEemppi5liCbJAzIQJ7feQnFg
VK7GLhDXnJ5eJTSQvb3CRsSlTFpvfJJj334Y/cAx1FoCfoHV4cF8N9q4zMyw+0oZ
beAPyNXTWnLEbd7PQmVHecjE5XkS0/YP9YRoOVfpvbfWoPuQTl+XRf6WRFv9M89v
FWIAiDaOaZKPGFWLv7MwOyNDGCF/oMGWcgS4fQ89G3dD/x2RwcBW469z09n/WYAc
cuFZM1pKJzJDKntjbjxEtizpS8AFUUV1JRMwfqdo/IzubBSFcr52cArAgwG4veU=
=kxpG
-----END PGP SIGNATURE-----

--Hc4oUbJDxITF2VNPrkB7H48xDv9VamRJM--
